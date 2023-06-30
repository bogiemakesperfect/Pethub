import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethub/Controllers/authentication_repository.dart';
import 'package:pethub/Models/pet_model.dart';
import 'package:pethub/Pages/Home/HomeTapBar.dart';

class MakePetController extends GetxController {
  var page = 0.obs;
  var controller = PageController().obs;
  var progress = 1.obs;
  var minprogress = 1.obs;
  var maxprogress = 12.obs;
  var maxPet = 3.obs;
  var petSayac = 0.obs;
  TextEditingController petNameController = TextEditingController();
  //TextEditingController petCinsController = TextEditingController();
  TextEditingController petFavoriteFoodController = TextEditingController();
  TextEditingController petFavoriteToyController = TextEditingController();
  TextEditingController petFavoritePlaceController = TextEditingController();
  TextEditingController petFavoriteHowLongController = TextEditingController();

  List KediCinsleri = [
    "Amerikan Kısa Tüylü (American Shorthair)",
    "İngiliz Kısa Tüylü (British Shorthair)",
    "Scottish Fold",
    "Siyam (Siamese)",
    "Sphynx",
    "Bengal",
    "Pers (Persian)",
    "Maine Coon",
    "Ragdoll",
    "Birman",
    "Abisin (Abyssinia)",
    "Alman Rex (German Rex)",
    "Balinese",
    "Bombay",
    "British Longhair",
    "Burmese",
    "Cornish Rex",
    "Devon Rex",
    "Egzotik Kısa Tüylü (Exotic Shorthair)",
    "Havana Brown",
    "Himalayan",
    "Japon Bobtail",
    "Javanese",
    "Khao Manee",
    "Korat",
    "LaPerm",
    "Mavi Rus (Russian Blue)",
    "Munchkin",
    "Nebelung",
    "Norveç Orman Kedisi (Norwegian Forest Cat)",
    "Ocicat",
    "Oriental",
    "Peterbald",
    "Pixie Bob",
    "Scottish Straight",
    "Snowshoe",
    "Somali",
    "Tonkinese",
    "Toyger",
    "Türk Angorası (Turkish Angora)",
    "Türk Van Kedisi (Turkish Van Cat)",
    "Van Kedi (Van Cat)",
    "Singapura",
    "Sokoke",
    "Selkirk Rex",
    "Serengeti",
    "Sibirya (Siberian)",
    "Skookum",
    "Thai",
    "Toybob",
    "Türk Kedisi (Ankara Kedisi)",
    "Ukrainian Levkoy",
    "York Chocolate",
    "Cymric",
    "Australian Mist",
    "Burmilla",
    "European Shorthair",
    "Foldex",
    "Highlander",
    "Japanese Bobtail Longhair",
  ];

  var kopekCinsleri = [
    "Affenpinscher",
    "Afghan Hound",
    "Airedale Terrier",
    "Akbash",
    "Akita",
    "Alaskan Klee Kai",
    "Alaskan Malamute",
    "American Bulldog",
    "American Eskimo Dog",
    "American Foxhound",
    "American Hairless Terrier",
    "American Pit Bull Terrier",
    "American Staffordshire Terrier",
    "American Water Spaniel",
    "Anatolian Shepherd",
    "Appenzeller Sennenhund",
    "Australian Cattle Dog",
    "Australian Kelpie",
    "Australian Shepherd",
    "Australian Terrier",
    "Azawakh",
    "Barbet",
    "Basenji",
    "Basset Fauve de Bretagne",
    "Basset Hound",
    "Bavarian Mountain Hound",
    "Beagle",
    "Bearded Collie",
    "Beauceron",
    "Bedlington Terrier",
    "Belgian Laekenois",
    "Belgian Malinois",
    "Belgian Sheepdog",
    "Belgian Tervuren",
    "Bergamasco",
    "Berger Picard",
    "Bernese Mountain Dog",
    "Bichon Frise",
    "Black and Tan Coonhound",
    "Black Russian Terrier",
    "Bloodhound",
    "Bluetick Coonhound",
    "Boerboel",
    "Bolognese",
    "Border Collie",
    "Border Terrier",
    "Borzoi",
    "Boston Terrier",
    "Bouvier des Flandres",
    "Boxer",
    "Boykin Spaniel",
    "Bracco Italiano",
    "Braque du Bourbonnais",
    "Briard",
    "Brittany",
    "Broholmer",
    "Brussels Griffon",
    "Bull Terrier",
    "Bulldog",
    "Bullmastiff",
  ];
  var isSelectedKedi = false.obs;
  var isSelectedKopek = false.obs;
  var isSelectedErkek = false.obs;
  var isSelectedKadin = false.obs;
  var isSelectedKisir = false.obs;
  var isSelectedKisirDegil = false.obs;
  Rx<int> numbersYil = 0.obs;
  Rx<int> numbersAy = 0.obs;
  var selectedCinsRenk = false;
  List<bool> likes = List.filled(60, false);
  int selectedIndex = -1.obs;
  selectedCins(String cins) {
    petCins = cins;
    update();
  }

  selectedCinsKopek(String cins) {
    petCins = cins;
    update();
  }

  increaseYil() {
    if (numbersYil.value > 15) {
      numbersYil.value = 0;
    } else {
      numbersYil.value = numbersYil.value + 1;
      petAgeYil = numbersYil.value;
    }
    update();
  }

  increaseAy() {
    if (numbersAy.value > 11) {
      numbersAy.value = 0;
    } else {
      numbersAy.value = numbersAy.value + 1;
      petAgeAy = numbersAy.value;
    }
    update();
  }

  isSelectedKisirr() {
    isSelectedKisir.value = !isSelectedKisir.value;
    isSelectedKisirDegil.value = false;
    petKisir = true;
    update();
  }

  isSelectedKisirDegill() {
    isSelectedKisirDegil.value = !isSelectedKisirDegil.value;
    isSelectedKisir.value = false;
    petKisir = false;
    update();
  }

  isSelectedMale() {
    isSelectedErkek.value = !isSelectedErkek.value;
    isSelectedKadin.value = false;
    petSex = "Erkek";
    update();
  }

  isSelectedFemale() {
    isSelectedKadin.value = !isSelectedKadin.value;
    isSelectedErkek.value = false;
    petSex = "Kadın";
    update();
  }

  isSelectedCat() {
    isSelectedKedi.value = !isSelectedKedi.value;
    isSelectedKopek.value = false;
    petType = "Kedi";

    update();
  }

  isSelectedDog() {
    isSelectedKopek.value = !isSelectedKopek.value;
    isSelectedKedi.value = false;
    petType = "Köpek";
    update();
  }

  onTextFieldChangedCins(String value) {
    petCins = value;
    update();
  }

  onTextFieldChangedName(String value) {
    petName = value;
    update();
  }

  onPageChanged(input) {
    page.value = input;
  }

  animateTo(int page) {
    if (controller.value.hasClients) {
      updateprogress();
      update();
      controller.value.animateToPage(page,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  animatetoBack(int page) {
    if (controller.value.hasClients) {
      decraseprogress();
      update();
      controller.value.animateToPage(page,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  updateprogress() {
    if (progress < maxprogress.toInt()) progress = progress + 1;
    print(progress);
  }

  decraseprogress() {
    if (progress > minprogress.toInt()) progress = progress - 1;
    print(progress);
  }

  String? petName;
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

  /*  
  addPet(){
    PetModel petModel = PetModel(
      petName: petName.toString(),
      petType: petType.toString(),
      petCins: petCins.toString(),
      petSex: petSex.toString(),
      petKisir: isSelectedKisirDegil.value ? false : true,
      petAgeYil: petAgeYil!.toInt(),
      petAgeAy: petAgeAy!.toInt(),
      petFavoriteFood: petFavoriteFood.toString(),
      petFavoriteToy: petFavoriteToy.toString(),
      petFavoritePlace: petFavoritePlace.toString(),
      petHowLong: petHowLong.toString(),
    );
    myPets.addPet(petModel);
     
  } */

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final User? user = AuthentiocationRepository.instance.firebaseUser.value;

  createNameforPet() {
    petSayac = petSayac + 1;
    firestore.collection(user!.uid).doc(petName).set({
      "petName": petName,
      "petType": petType,
      "petCins": petCins,
      "petSex": petSex,
      "petKisir": petKisir,
      "petAgeYil": petAgeYil,
      "petAgeAy": petAgeAy,
      "petFavoriteFood": petFavoriteFood,
      "petFavoriteToy": petFavoriteToy,
      "petFavoritePlace": petFavoritePlace,
      "petHowLong": petHowLong,
    });
  }

  /*  void createPet() {
    final petOrnek = <String, dynamic>{
      "petName": petName,
      "petType": petType,
      "petCins": petCins,
      "petSex": petSex,
      "petKisir": petKisir,
      "petAgeYil": petAgeYil,
      "petAgeAy": petAgeAy,
      "petFavoriteFood": petFavoriteFood,
      "petFavoriteToy": petFavoriteToy,
      "petFavoritePlace": petFavoritePlace,
      "petHowLong": petHowLong,
    };

    firestore
        .collection(user!.uid)
        .add(petOrnek)
        .then((a) => print('DocumentSnapshot added with ID: ${a}'));
  } */

  
}
