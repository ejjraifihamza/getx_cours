import 'package:get/get.dart';

class AnyController extends GetxController {
  RxInt number = 0.obs;
  void addTwoToNumber() {
    number + 2;
  }

  void removeTwoFromNumber() {
    number - 2;
  }
}
