import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethub/Controllers/email_verification.dart';
import 'package:pethub/Pages/Beginning/TrailerView.dart';
import 'package:pethub/Pages/Home/HomeTapBar.dart';

import '../Models/user_model.dart';

class AuthentiocationRepository extends GetxController {
  static AuthentiocationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => TrailerView())
        : Get.offAll(() => HomeTapBar());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password, String username) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      firebaseUser.value != null
          ? Get.offAll(() => HomeTapBar())
          : Get.offAll(() => TrailerView());

      if (firebaseUser.value != null) {
        print("ÇALLLIŞŞŞTTIIIIIIII");
        _auth.currentUser!.updateDisplayName(username);

        _auth.currentUser!.reload();
        print(">>>>>>>>>>>>>>>>>>>>>>>>>>>");
        print("username: ${username}");
        print(">>>>>>>>>>>>>>>>>>>>>>>>>>>");
        print("username: ${_auth.currentUser!.displayName}");
        print(">>>>>>>>>>>>>>>>>>>>>>>>>>>");
      }

      firebaseUser.value != null
          ? Get.snackbar("Hoşgeldiniz", "Başarıyla giriş yaptınız.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green,
              colorText: Colors.white)
          : Get.snackbar("Tekrar deneyin", "Başarısız giriş.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              colorText: Colors.white);
    } on FirebaseAuthException catch (e) {
      print("Firebase Auth Error: ${e.message}");
      if (e.message ==
          "The email address is already in use by another account.") {
        Get.snackbar("Tekrar deneyin", "Bu e-posta adresi zaten kullanımda.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else if (e.message == "The email address is badly formatted.") {
        Get.snackbar("Tekrar deneyin", "Geçersiz e-posta adresi",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else if (e.message == "Password should be at least 6 characters") {
        Get.snackbar("Tekrar deneyin", "Şifre en az 6 karakter olmalıdır.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else if (e.message == "Given String is empty or null") {
        Get.snackbar("Tekrar deneyin", "Boş bırakmayınız",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }

      // !
    } catch (_) {
      print("EXPECTİON: ${_}");
      throw _;
    }
  }

  Future<void> loginInWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.snackbar("Hoşgeldiniz", "Başarıyla giriş yaptınız.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green,
              colorText: Colors.white)
          : Get.snackbar("Tekrar deneyin", "Başarısız giriş.",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              colorText: Colors.white);
    } on FirebaseAuthException catch (e) {
      print("Firebase Auth Error: ${e.message}");
      if (e.message ==
          "There is no user record corresponding to this identifier. The user may have been deleted.") {
        Get.snackbar("Tekrar deneyin", "Bu e-posta adresi kayıtlı değil.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else if (e.message ==
          "The password is invalid or the user does not have a password.") {
        Get.snackbar(
            "Tekrar deneyin", "Parola geçersiz veya kullanıcının parolası yok.",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else if (e.message == "Given String is empty or null") {
        Get.snackbar("Tekrar deneyin", "Boş bırakmayınız",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else if (e.message == "The email address is badly formatted.") {
        Get.snackbar("Tekrar deneyin", "Geçersiz e-posta adresi",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    } catch (_) {}
  }

  Future<void> Kontrol() async {
    _auth.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  static getCurrentUserId() {}
}
