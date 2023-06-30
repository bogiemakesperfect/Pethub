import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:pethub/Controllers/authentication_repository.dart';

class PetFuncController extends GetxController {


  @override
  void onInit() {
    // TODO: implement onInit
    showHomeView();
    super.onInit();

  }




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
  void readPet() {
    // ! pet info
    firestore.collection(user!.uid).get().then((value) {
      value.docs.forEach((element) {
        print(element.data());
      });
    });
  }

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

  void readPetDoc() {
    if (PetName.value != "") {
      firestore
          .collection(user!.uid)
          .doc(PetName.toString())
          .get()
          .then((value) {
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
    } else {
      print("pet yok");
    }
  }

  void HowManyPet() {
    firestore.collection(user!.uid).get().then((value) {
      value.docs.forEach((element) {
        print(element.id);
        PetName = element.id.obs;
        print(PetName);
        update();
      });
    });
  }

  int returnHowManyPet() {
    var petsayisi = 0;
    firestore.collection(user!.uid).get().then((value) {
      value.docs.forEach((element) {
        petsayisi = petsayisi + 1;
      });
    });
    print(petsayisi);
    return petsayisi;
  }

  /*
  void updatePet() {
    firestore
        .collection(user!.uid)
        .doc("1")
        .update(petOrnek)
        .then((value) => print("User Updated"));
  }
 */
  void deletePet() {
    firestore
        .collection(user!.uid)
        .doc(PetName.toString()) // ! pet name
        .delete()
        .then((value) => print("User Deleted"));
    PetName = "".obs;
  }
}