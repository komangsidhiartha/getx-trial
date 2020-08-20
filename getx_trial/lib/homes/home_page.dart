import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_trial/details/detail_view.dart';
import 'package:getx_trial/homes/home_controller.dart';

class HomePage extends StatelessWidget {
  final String title;
  final HomeController _controller = Get.put(HomeController());

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:'.tr,
            ),
            Obx(
              () => Text(
                _controller.counter.string,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 32),
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              heroTag: "increment",
              onPressed: _controller.increment,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              heroTag: "next_page",
              onPressed: () => Get.to(DetailPage()),
              tooltip: 'Next Page',
              child: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
