package com.example.test_pigeon

import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothSocket
import io.flutter.Log
import java.io.IOException
import java.util.*

class ConnectedThread(
        device: BluetoothDevice,
        val bluetoothAdapter: BluetoothAdapter,
        val uuid: UUID,
        val manageConnectedSocket: (BluetoothSocket) -> Unit
        ) : Thread() {

    val TAG = "ConnectThread"

    private val mmSocket: BluetoothSocket? by lazy(LazyThreadSafetyMode.NONE) {
        device.createRfcommSocketToServiceRecord(uuid)
    }

    override fun run() {
        // Cancel discovery because it otherwise slows down the connection.
        bluetoothAdapter.cancelDiscovery()

        mmSocket?.let { socket ->
            // Connect to the remote device through the socket. This call blocks
            // until it succeeds or throws an exception.
            socket.connect()


            // The connection attempt succeeded. Perform work associated with
            // the connection in a separate thread.
            manageConnectedSocket(socket)
        }
    }

    // Closes the client socket and causes the thread to finish.
    fun cancel() {
        try {
            mmSocket?.close()
        } catch (e: IOException) {
            Log.e(TAG, "Could not close the client socket", e)
        }
    }
}