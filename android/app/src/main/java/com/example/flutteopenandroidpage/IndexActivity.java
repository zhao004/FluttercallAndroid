package com.example.flutteopenandroidpage;

import android.content.Context;
import android.widget.Toast;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class IndexActivity extends FlutterActivity {
    /**
     * java 的特性重载方法
     */
    //无参数的构造函数
    public IndexActivity() {
    }

    //有参数的构造函数
    public IndexActivity(String tag, BinaryMessenger messenger, Context context) {
        new MethodChannel(messenger, tag).setMethodCallHandler((call, result) -> {
            switch (String.valueOf(call.method)) {
                case "toast":
                    Toast.makeText(context, "这是index页面的toast", Toast.LENGTH_SHORT).show();
                    result.success(true);
                    break;
                default: {

                }
            }
        });

    }

}