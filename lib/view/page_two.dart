// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/controller/home_controller.dart';

class PageTwo extends StatelessWidget {
  PageTwo({Key? key}) : super(key: key);
  // !initilize HomeController that in the home file by Get.find
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display the counter'),
      ),
      body: Center(
        child: Text(
          'The Counter is : ${controller.counter}',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
