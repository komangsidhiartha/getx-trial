import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_trial/homes/home_controller.dart';

class DetailPage extends StatelessWidget {
  final HomeController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text(_controller.counter.string)),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "increment",
        onPressed: () {
          Get.locale = Locale('pt');
          _controller.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
