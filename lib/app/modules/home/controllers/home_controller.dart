import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  //创建通道与安卓交互
  var home = MethodChannel("home");

  //创建通道与安卓交互
  var index = MethodChannel("index");

  ///与安卓交互
  void indextoast() {
    index.invokeMethod('toast');
  }

  ///与安卓交互
  void hometoast() {
    home.invokeMethod('toast', {"content": "你好Android"});
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
