import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethub/Controllers/authentication_repository.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  /* TabController tabController = TabController(length: 3, vsync: Get.context! ); */
  var currentPage = 0.obs;
  late TabController tabController;
  /* tabChange(int index) {
    currentPage.value = index;
  } */
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final User? user = AuthentiocationRepository.instance.firebaseUser.value;

  var PetName = "".obs;

  String? petType;
  String? petCins;
  String? petSex;
  bool? petKisir;
  int? petAgeYil;
  int? petAgeAy;
  String? petFavoriteFood;
  String? petFavoriteToy;
  String? petFavoritePlace;
  String? petHowLong;
  /* RxBool isExpanded = false.obs;

  void toggleExpanded() {
    
      isExpanded.value = !isExpanded.value;
      update();
   
  } */

  @override
  void onInit() {
    super.onInit();
    
    /* HowManyPet();

    Future.delayed(Duration(seconds: 5), () {
      readPetDoc();
    }); */
    currentPage.value = 1;
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  void onReady() {
    // TODO: implement onReady

    super.onReady();
  }

  @override
  void onClose() {
    //tabController.dispose();
    super.onClose();
  }
}
