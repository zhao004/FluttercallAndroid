package com.example.flutteopenandroidpage;

import android.content.Context;
import android.widget.Toast;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;

public class HomeActivity {
    public HomeActivity() {
    }

    public HomeActivity(String tag, BinaryMessenger messenger, Context context) {
        new MethodChannel(messenger, tag).setMethodCallHandler((call, result) -> {
            switch (String.valueOf(call.method)) {
                case "toast":
                    Toast.makeText(context, "这是Home页面的toast:flutter传输过来的内容=》" + call.argument("content"), Toast.LENGTH_SHORT).show();
                    result.success(true);
                    break;
                default: {

                }
            }
        });
    }
}