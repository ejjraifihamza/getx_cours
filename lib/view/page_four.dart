// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_cours/controller/sum_controller.dart';

// ! with GetBuilder its gonna rebuild every widget that listen to the same controller,
// ! even if its not need to rebuild
// * GetX rebuild just the widget that need to be rebuild
// ! check the console when you click

class PageFour extends StatelessWidget {
  PageFour({Key? key}) : super(key: key);

  final SumController sumController = Get.put(SumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Four'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sum Of Two Numbers',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            GetBuilder<SumController>(
                init: SumController(),
                builder: (controller) {
                  print('rebuild number one');
                  return Text('Number One is : ${controller.numberOne}');
                }),
            SizedBox(
              height: 20,
            ),
            GetBuilder<SumController>(builder: (controller) {
              print('rebuild number two');
              return Text('Number Two is : ${controller.numbertwo}');
            }),
            SizedBox(
              height: 20,
            ),
            GetBuilder<SumController>(builder: (controller) {
              print('rebuild the sum');
              return Text(' result is : ${controller.sum}');
            }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  sumController.incrementOne();
                },
                child: Text('Add To One To Number One')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  sumController.incrementTwo();
                },
                child: Text('Add One To Number Two'))
          ],
        ),
      ),
    );
  }
}
