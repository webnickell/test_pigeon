package com.example.test_pigeon

import android.bluetooth.BluetoothDevice
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import io.flutter.plugins.ChatMessage

class BluetoothDevicesReceiver(
        private val flutterApi: ChatMessage.ChatMessageFlutterApi
) : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent) {
        val action: String? = intent.action

        when(action) {
            BluetoothDevice.ACTION_FOUND -> {
                // Discovery has found a device. Get the BluetoothDevice
                // object and its info from the Intent.
                val device: BluetoothDevice =
                        intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE) ?: return
                val deviceName = device.name
                val deviceHardwareAddress = device.address // MAC address
                device.bluetoothClass.deviceClass
            }
            BluetoothDevice.ACTION_ACL_DISCONNECT_REQUESTED -> {}
            BluetoothDevice.ACTION_ACL_CONNECTED -> {
                flutterApi.setBluetoothAvailableStatus(true, {})
            }
            BluetoothDevice.ACTION_ACL_DISCONNECTED -> {
                flutterApi.setBluetoothAvailableStatus(false, {})
            }
        }

//        // When discovery finds a device
//        if (BluetoothDevice.ACTION_FOUND.equals(action)) {
//            // Get the BluetoothDevice object from the Intent
//            val device = intent.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);
//            // If it's already paired, skip it, because it's been listed already
//            if (device != null && device.getBondState() != BluetoothDevice.BOND_BONDED) {
//                mNewDevicesArrayAdapter.add(device.getName() + "\n" + device.getAddress());
//            }
//            // When discovery is finished, change the Activity title
//        } else if (BluetoothAdapter.ACTION_DISCOVERY_FINISHED.equals(action)) {
//            setProgressBarIndeterminateVisibility(false);
//            setTitle(R.string.select_device);
//            if (mNewDevicesArrayAdapter.getCount() == 0) {
//                String noDevices = getResources().getText(R.string.none_found).toString();
//                mNewDevicesArrayAdapter.add(noDevices);
//            }
//        }
    }
}