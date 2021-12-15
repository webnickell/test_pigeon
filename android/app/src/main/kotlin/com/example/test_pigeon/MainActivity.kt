package com.example.test_pigeon

import android.app.Activity
import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothDevice
import android.bluetooth.BluetoothServerSocket
import android.bluetooth.BluetoothSocket
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Handler
import android.os.Message
import androidx.core.app.ActivityCompat.startActivityForResult
import io.flutter.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.ChatMessage
import java.io.IOException
import java.nio.charset.Charset
import java.util.*

class MainActivity: FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        val flutterApi = ChatMessage.ChatMessageFlutterApi(
                flutterEngine.dartExecutor.binaryMessenger
        )
        val hostApi = BluetoothChatMessage(this, flutterApi, this)
        ChatMessage.ChatMessageHostApi.setup(
                flutterEngine.dartExecutor.binaryMessenger,
                hostApi
        )



    }
}




