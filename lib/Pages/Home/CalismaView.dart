import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethub/Controllers/authentication_repository.dart';
import 'package:pethub/Controllers/make_pet.dart';
import 'package:pethub/Controllers/real_time_database.dart';
import 'package:pethub/Models/pet_model.dart';
import 'package:pethub/Pages/Home/HomeTapBar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Controllers/Home_controller.dart';

class CalismaView extends StatelessWidget {
  CalismaView({super.key});

  HomeController make = Get.put(HomeController());

  String a = "Arwen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161A1D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80.w,
              height: 40.h,
              color: Colors.black87,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Create Pet"),
                    ),
                   /*  ElevatedButton(
                      onPressed: () {
                        make.deletePet();
                      },
                      child: Text("delete Pet"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        make.HowManyPet();
                      },
                      child: Text("Doc ogren"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        make.readPetDoc();
                      },
                      child: Text("read pet doc"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        make.returnHowManyPet();
                      },
                      child: Text("return how many pet"),
                    ), */
                  ]),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 80.w,
              height: 40.h,
              color: Colors.black87,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                     /*  make.readPet(); */
                    },
                    child: Text("Read Pet"),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Get.to(() => HomeTapBar());
                    },
                    child: Text("Read Pet"),
                  ),
                  Text("Pet Name: ", style: TextStyle(color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
