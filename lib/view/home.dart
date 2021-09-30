// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/controller/home_controller.dart';
import 'package:getx_cours/view/page_one.dart';
import 'package:getx_cours/view/page_two.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  /* 
   ! this Get.lazyput initialise HomeController intel we need it
   ! unlike Get.put, *** and do initialize just only One time, so when you close
   ! the route The HomeController deleted from memory and error will occur when you 
   ! try to open the same route again that have Get.find().
   ! to fix that use fenix = true, or do Get.find() with Get.lazy() in same file
   ! but this two solution will make the variables in the controller! this Get.lazyput initialise HomeController intel we need it
   ! unlike Get.put, *** and do initialize just only One time, so when you close
   ! the route The HomeController deleted from memory and error will occur when you 
   ! try to open the same route again that have Get.find().
   ! return to the first value bcz 'HomeController' onDelete() called
   */
  final controller = Get.lazyPut(() => HomeController(), fenix: true);
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
