// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/controller/home_controller.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display the counter'),
      ),
      body: Center(
        child: GetBuilder<HomeController>(
          // ! you dont need to do initialise bcz HomeController still here
          // ! and does not remove from the memory and that's bcz permanent is true
          // ! but if you enter directly to this page without init HomeController
          // ! error will occure, you can fix it by data binding or init HomeController
          init: HomeController(),
          builder: (controller) => Text(
            'The Counter is : ${controller.counter}',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
