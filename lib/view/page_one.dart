// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/controller/home_controller.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

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
            GetBuilder<HomeController>(
                init: HomeController(),
                builder: (controller) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            controller.increment();
                          },
                          child: Text('+')),
                      Center(child: Text('${controller.counter}')),
                      ElevatedButton(
                          onPressed: () {
                            controller.decrement();
                          },
                          child: Text('-')),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
