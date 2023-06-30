import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pethub/Controllers/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
 
  
  void LoginUser(String email,String password){
    AuthentiocationRepository.instance.loginInWithEmailAndPassword(email, password);

  }

}