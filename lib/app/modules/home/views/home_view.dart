import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              onPressed: () {
                controller.hometoast();
              },
              child: Text("调用home通道的toast方法"),
            ),
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              onPressed: () {
                controller.indextoast();
              },
              child: Text("调用index通道的toast方法"),
            ),
          ),
        ],
      ),
    );
  }
}
