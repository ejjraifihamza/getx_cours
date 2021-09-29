// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/controller/sum_controller.dart';

// * GetX rebuild just the widget that need to be rebuild
// ! and that is the main deferent between GetBuilder and GetX
// ! check the console when you click

class PageThree extends StatelessWidget {
  PageThree({Key? key}) : super(key: key);
  final SumController sumController = Get.put(SumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Three'),
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
            GetX<SumController>(
                init: SumController(),
                builder: (controller) {
                  print('rebuild number one');
                  return Text('Number One is : ${controller.numberOne}');
                }),
            SizedBox(
              height: 20,
            ),
            GetX<SumController>(builder: (controller) {
              print('rebuild number two');
              return Text('Number Two is : ${controller.numbertwo}');
            }),
            SizedBox(
              height: 20,
            ),
            GetX<SumController>(builder: (controller) {
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
