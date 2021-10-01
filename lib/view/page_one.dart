// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/controller/home_controller.dart';

class PageOne extends StatelessWidget {
  PageOne({Key? key}) : super(key: key);
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      print('increment rebuild');
                      controller.increment();
                    },
                    child: Text('+')),
                GetBuilder<HomeController>(builder: (controller) {
                  print('text rebuild');
                  return Center(
                    child: Text('${controller.counter}'),
                  );
                }),
                ElevatedButton(
                    onPressed: () {
                      print('decrement rebuild');
                      controller.decrement();
                    },
                    child: Text('-')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
