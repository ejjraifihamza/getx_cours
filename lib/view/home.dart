// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_cours/controller/any_controller.dart';
import 'package:getx_cours/controller/home_controller.dart';

/*
GetBuilder faster than Getx and Obx use less memory,
! but, it's not reactive, so need to use update()
*/
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              builder: (controller) => Row(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
GetX is very similar to GetBuilder in terms of syntax,
* depends on stream.
! but Getx is reactive, so you no longer need update(),
*/
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetX<HomeController>(
//               init: HomeController(),
//               builder: (controller) => Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {
//                         controller.increment();
//                       },
//                       child: Text('+')),
//                   Text('${controller.counter.value}'),
//                   ElevatedButton(
//                       onPressed: () {
//                         controller.decrement();
//                       },
//                       child: Text('-')),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

/*
Obx no longer need to define wich controller he will listen from,
no longer need builder function,
! instead do the injection like so : final HomeController controller = HomeController();
*/
// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);
//   // inject controller
//   final HomeController controller = HomeController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('HomePage'),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(() => Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     ElevatedButton(
//                         onPressed: () {
//                           controller.increment();
//                         },
//                         child: Text('+')),
//                     Center(child: Text('${controller.counter.value}')),
//                     ElevatedButton(
//                         onPressed: () {
//                           controller.decrement();
//                         },
//                         child: Text('-')),
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
