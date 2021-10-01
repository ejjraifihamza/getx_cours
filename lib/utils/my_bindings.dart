import 'package:get/get.dart';
import 'package:getx_cours/controller/home_controller.dart';

/*
implements mean that every things found in Bindings use it
*/
class MyBindings implements Bindings {
  @override
  void dependencies() {
    // ! whene HomeController initialized by initialBinding ther is no need for permanent
    Get.put(HomeController());
  }
}
