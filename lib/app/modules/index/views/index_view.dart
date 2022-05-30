import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  //创建通道与安卓交互
  var mTD = MethodChannel("index");

  ///与安卓交互
  void toast() {
    mTD.invokeMapMethod('toast');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RawMaterialButton(
            onPressed: () {
              // controller.toast();
              toast();
            },
            child: Text("调用Android_toast"),
          ),
        ],
      ),
    );
  }
}
