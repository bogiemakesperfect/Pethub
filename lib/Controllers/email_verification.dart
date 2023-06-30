import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class emailVerificationController extends GetxController {
  static RxBool isEmailVerified = false.obs;
  Timer? timer;

  sendmail() async {
    if (FirebaseAuth.instance.currentUser!.emailVerified.obs == false) {
      FirebaseAuth.instance.currentUser?.sendEmailVerification();
      timer = Timer.periodic(
          const Duration(seconds: 3), (_) => checkEmailVerified());
    } else {
      Get.snackbar(
        "Email Verification",
        "Email Already Verified",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }

  checkEmailVerified() async {
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified.obs;

    if (isEmailVerified == true) {
      Get.snackbar(
        "Email Verification",
        "Email Verified Successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      timer?.cancel();
    }
  }
}
