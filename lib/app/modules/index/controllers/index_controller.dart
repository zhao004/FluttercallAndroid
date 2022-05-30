import 'package:flutter/services.dart';
import 'package:get/get.dart';

class IndexController extends GetxController {
  //TODO: Implement IndexController
  //创建通道与安卓交互
  var mTD = MethodChannel("index");

  ///与安卓交互
  void toast() {
    mTD.invokeMapMethod('toast');
  }

  @override
  void onInit() {
    super.onInit();
    print("启动了flutter index页面------>");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
