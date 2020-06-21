package com.lashket.taweather

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {

    companion object {
        init {
            System.loadLibrary("sqlite3")
        }
    }

}
