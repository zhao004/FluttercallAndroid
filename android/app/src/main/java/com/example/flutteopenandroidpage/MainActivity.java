package com.example.flutteopenandroidpage;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;

public class MainActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        //创建home通道
        new HomeActivity("home", flutterEngine.getDartExecutor().getBinaryMessenger(), MainActivity.this);
        //创建index通道
        new IndexActivity("index", flutterEngine.getDartExecutor().getBinaryMessenger(), MainActivity.this);
    }
}
