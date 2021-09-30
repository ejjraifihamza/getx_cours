// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/view/page_one.dart';
import 'package:getx_cours/view/page_two.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => PageOne());
                },
                child: Text('Go To Page One')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => PageTwo());
                },
                child: Text('Go To Page Two')),
          ],
        ),
      ),
    );
  }
}
