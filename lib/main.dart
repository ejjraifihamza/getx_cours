// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/utils/my_bindings.dart';
import 'package:getx_cours/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: [
        // ! call MyBindings by route name
        // ! this way HomeController will be deleted from memory when you close the route
        GetPage(name: '/', page: () => HomePage(), binding: MyBindings()),
      ],
      initialRoute: '/',
      // ! call MyBindings by initialBinding
      // initialBinding: MyBindings(),
    );
  }
}
