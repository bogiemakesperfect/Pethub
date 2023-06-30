import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pethub/Controllers/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final username = TextEditingController();
 
  
  void registerUser(String email,String password,String username){
    AuthentiocationRepository.instance.createUserWithEmailAndPassword(email, password,username);
    

  }

}