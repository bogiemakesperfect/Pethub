/* import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:pethub/Controllers/authentication_repository.dart';

class BeslenmeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final User? user = AuthentiocationRepository.instance.firebaseUser.value;

  var PetName = "".obs;

  void showHomeView() {
    firestore.collection(user!.uid).get().then((value) {
      value.docs.forEach((element) {
        print(element.id);
        PetName = element.id.obs;
        print(PetName);
        update();
        firestore.collection(user!.uid).doc(element.id).get().then((value) {
          //print(value.data());
          value.data()!.forEach((key, value) {
            if (key == "petName") {
              PetName = value.toString().obs;
            }
            update();
            if (key == "petType") {
              petType = value.toString();
            }
            update();
            if (key == "petCins") {
              petCins = value.toString();
            }
            update();
            if (key == "petSex") {
              petSex = value.toString();
            }
            update();
            if (key == "petKisir") {
              petKisir = value;
            }
            update();
            if (key == "petAgeYil") {
              petAgeYil = value;
            }
            update();
            if (key == "petAgeAy") {
              petAgeAy = value;
            }
            update();
            if (key == "petFavoriteFood") {
              petFavoriteFood = value.toString();
            }
            update();
            if (key == "petFavoriteToy") {
              petFavoriteToy = value.toString();
            }
            update();
            if (key == "petFavoritePlace") {
              petFavoritePlace = value.toString();
            }
            update();
            if (key == "petHowLong") {
              petHowLong = value.toString();
            }
            update();
            print(key);
            print(value);
          });
        });
      });
    });
  }

  @override
  void onInit() {
    super.onInit();
    
    
  }



} */