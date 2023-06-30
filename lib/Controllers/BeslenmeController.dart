import 'package:get/get.dart';

class BeslenmeController extends GetxController {
  // change button color when is tapped
  bool isTapped = true;
  bool isTapped1 = false;
  bool isTapped2 = false;

  void changeColor() {
    isTapped = !isTapped;
    isTapped1 = false;
    isTapped2 = false;

    update();
  }

  void changeColor1() {
    isTapped1 = !isTapped1;
    isTapped = false;
    isTapped2 = false;


    update();
  }

  void changeColor2() {
    isTapped2 = !isTapped2;
    isTapped = false;
    isTapped1 = false;


    update();
  }

 
}
