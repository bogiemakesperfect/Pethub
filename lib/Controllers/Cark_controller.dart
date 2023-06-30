import 'dart:async';

import 'package:get/get.dart';

class CarkController extends GetxController {

 /* var selected = StreamController<int>();  */
  


/*  Future<void> closeStream() async {
    await selected.close();
  } */

 var tiklanabilir = true.obs;
 

  
  @override
  void onInit() {
    print("CarkController onInit");
    super.onInit();
  }

  @override
  void onReady() {
    print("CarkController onReady");
    super.onReady();
  }

  @override
  void onClose() {
    print("CarkController onClose");
    super.onClose();
  }

  @override
  void dispose() {
    print("CarkController dispose");
    super.dispose();
  }

  

  

}