import 'package:get/get.dart';

class HomeController extends GetxController {
  int counter = 0;
  void increment() {
    counter++;
    // update() is like notifylistiner() in provider.
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
