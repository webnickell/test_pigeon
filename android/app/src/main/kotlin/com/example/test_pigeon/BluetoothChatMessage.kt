package com.example.test_pigeon

import android.app.Activity
import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothDevice.*
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Handler
import android.os.Message
import androidx.core.app.ActivityCompat
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner
import io.flutter.plugins.ChatMessage
import java.util.*

class BluetoothChatMessage(
        val activity: Activity,
        val flutterApi: ChatMessage.ChatMessageFlutterApi,
        val context: Context
) : ChatMessage.ChatMessageHostApi, Handler.Callback, DefaultLifecycleObserver {
    private val REQUEST_ENABLE_BT = 0
    private val MY_UUID = UUID.randomUUID()
    private val bluetoothAdapter: BluetoothAdapter = BluetoothAdapter.getDefaultAdapter()

    private lateinit var dataThread: BluetoothDataThread
    private lateinit var partnerUUID: UUID
    private val receiver = BluetoothDevicesReceiver(flutterApi)

    /// get bluetooth status in stream
    /// enable bluetooth
    /// find devices
    /// connect to device
    /// chat with messages
    /// close connection

    override fun onCreate(owner: LifecycleOwner) {
        super.onCreate(owner)
        val filter =  IntentFilter().apply {
            addAction(BluetoothDevice.ACTION_ACL_CONNECTED);
            addAction(BluetoothDevice.ACTION_ACL_DISCONNECT_REQUESTED);
            addAction(BluetoothDevice.ACTION_ACL_DISCONNECTED);
        }
        context.registerReceiver(receiver, filter)
    }

    override fun onDestroy(owner: LifecycleOwner) {
        context.unregisterReceiver(receiver)
        super.onDestroy(owner)
    }

    override fun connect(id: String?) {
        val uuid = UUID.fromString(id)
        val device = bluetoothAdapter.bondedDevices
                .firstOrNull { it.uuids.any { it.uuid == uuid } } ?: return

        partnerUUID = uuid
        AcceptThread(bluetoothAdapter, MY_UUID) {
            dataThread = BluetoothDataThread(it, Handler(this@BluetoothChatMessage))
        }
        ConnectedThread(device, bluetoothAdapter, MY_UUID) {
            dataThread = BluetoothDataThread(it, Handler(this@BluetoothChatMessage))
        }
    }

    override fun disconnect() {
        TODO("Not yet implemented")
    }

    override fun sendMessage(authorId: String?, message: ChatMessage.Message?) {
        if (message == null) return
        val text = message.text.toByteArray(Charsets.UTF_16)
        dataThread.write(text)
    }

    override fun pairedDevices(): MutableList<ChatMessage.Device> {
        return bluetoothAdapter.bondedDevices.map {
            ChatMessage.Device().apply {
                name = it.name
                macAddress = it.address
                bondState = when(it.bondState) {
                    BOND_NONE -> ChatMessage.DeviceBondState.none
                    BOND_BONDING -> ChatMessage.DeviceBondState.bonding
                    BOND_BONDED -> ChatMessage.DeviceBondState.bonded
                    else -> ChatMessage.DeviceBondState.none
                }
                uuids = it.uuids.map { it.uuid.toString() }
            }
        }.toMutableList()
    }

    override fun discoverDevices() {
        val filter = IntentFilter(BluetoothDevice.ACTION_FOUND)
        activity.registerReceiver(receiver, filter)
        // make device visible
        val requestCode = 1;
        val discoverableIntent: Intent = Intent(BluetoothAdapter.ACTION_REQUEST_DISCOVERABLE).apply {
            putExtra(BluetoothAdapter.EXTRA_DISCOVERABLE_DURATION, 300)
        }
        activity.startActivityForResult(discoverableIntent, requestCode) // TODO register with result


    }

    override fun isBluetoothEnabled(): Boolean {
        return bluetoothAdapter.isEnabled
    }

    override fun isBluetoothAvailable(): Boolean {
        return BluetoothAdapter.getDefaultAdapter() != null
    }

    override fun enableBluetooth() {
        if (!bluetoothAdapter.isEnabled) {
            val enableBtIntent = Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE)
            ActivityCompat.startActivityForResult(activity, enableBtIntent, REQUEST_ENABLE_BT, null)
        }
    }

    override fun handleMessage(msg: Message): Boolean {
        return when (msg.what) {
            MESSAGE_READ -> {
                val bytes = msg.obj as ByteArray
                val textValue = String(bytes, Charsets.UTF_16)
                val message = ChatMessage.Message().apply {
                    text = textValue
                    author = ""
                }
                flutterApi.putMessage(message, {})
                true
            }
            else -> false
        }
    }


}