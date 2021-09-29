import 'package:get/get.dart';

// class SumController extends GetxController {
//   var numberOne = 0;
//   var numbertwo = 0;
//   void incrementOne() {
//     numberOne++;
//     update();
//   }

//   void incrementTwo() {
//     numbertwo++;
//     update();
//   }

//   void decrementOne() {
//     numberOne--;
//     update();
//   }

//   void decrementTwo() {
//     numberOne--;
//     update();
//   }

//   int get sum {
//     return numberOne + numbertwo;
//   }
// }

//  for GetX
class SumController extends GetxController {
  RxInt numberOne = 0.obs;
  RxInt numbertwo = 0.obs;
  void incrementOne() {
    numberOne++;
    // update();
  }

  void incrementTwo() {
    numbertwo++;
    // update();
  }

  void decrementOne() {
    numberOne--;
    // update();
  }

  void decrementTwo() {
    numberOne--;
    // update();
  }

  int get sum {
    return numberOne.value + numbertwo.value;
  }
}
