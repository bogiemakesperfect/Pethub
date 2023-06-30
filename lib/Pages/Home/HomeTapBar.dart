import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pethub/Controllers/Home_controller.dart';
import 'package:pethub/Controllers/authentication_repository.dart';
import 'package:pethub/Controllers/email_verification.dart';
import 'package:pethub/Controllers/make_pet.dart';
import 'package:pethub/Models/user_model.dart';
import 'package:pethub/Pages/Cark/CarkView.dart';
import 'package:pethub/Pages/Home/CalismaView.dart';
import 'package:pethub/Pages/HomeView/HomeView.dart';
import 'package:pethub/Pages/Icerikekler/IceriklerView.dart';
import 'package:pethub/Pages/MakePet/MakePetView.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Controllers/Cark_controller.dart';

class HomeTapBar extends StatelessWidget {
  HomeTapBar({super.key});
  //static AuthentiocationRepository get instance => Get.find();
  AuthentiocationRepository get instance => Get.find();
  MakePetController make = Get.put(MakePetController());
  final User? user = AuthentiocationRepository.instance.firebaseUser.value;
  emailVerificationController controller =
      Get.put(emailVerificationController());
  HomeController home = Get.put(HomeController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(
        
        body: (context, controller) => TabBarView(

          controller: home.tabController,

          children: [
            IceriklerView(), //CalismaView(),
            HomeView(),
            CarkView() //Placeholder(),
          ],
        ),
        child: TabBar(
          
          
          indicator: BoxDecoration(
            color: Color(0xFF161A1D).withOpacity(0.3),
            borderRadius: BorderRadius.circular(35),
          ),
          controller: home.tabController,
          splashBorderRadius: BorderRadius.circular(35),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          
          tabs: [
            SizedBox(
              height: 10.h,
              width: 20.w,
              child: Center(
                child: SvgPicture.asset(
                  "assets/Svgs/IceriklerIcon.svg",
                  width: 5.w,
                  height: 5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
              width: 20.w,
              child: Center(
                child: SvgPicture.asset("assets/Svgs/HomeIcon.svg",
                    width: 7.w, height: 7.h, fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 10.h,
              width: 20.w,
              child: Center(
                child: SvgPicture.asset(
                  "assets/Svgs/CarkIcon.svg",
                  width: 5.5.w,
                  height: 5.5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        
        borderRadius: BorderRadius.all(Radius.circular(35)),
        duration: Duration(seconds: 1),
        curve: Curves.decelerate,
        showIcon: true,
        width: 90.w,
        barColor: Color(0xFF3C3C3C).withOpacity(0.38), // bar rengi
        start: 2,
        end: 0,
        bottom: 10,
        alignment: Alignment.bottomCenter,
        iconHeight: 35,
        iconWidth: 35,
        reverse: false,
        hideOnScroll: true,
        scrollOpposite: false,
        onBottomBarHidden: () {},
        onBottomBarShown: () {},
      ),
    );
  }
}

/*
Scaffold(
      appBar: AppBar(
        // print ne username
        title: Text("Home Page[{${user!.displayName}}}]"),
      ),
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
                Text(
                  user!.emailVerified ? "Email Verified" : "Email Not Verified",
                ),
                Text(
                  "User Name: ${user!.displayName}",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "User Email: ${user!.email}",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "User ID: ${user!.uid}",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "User Phone: ${user!.phoneNumber}",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "User Photo: ${user!.photoURL}",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "User Provider: ${user!.providerData}",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              AuthentiocationRepository.instance.logout();
            },
            child: Text('Çıkış yap'),
          ),
          ElevatedButton(
            onPressed: () {
              AuthentiocationRepository.instance.Kontrol();
            },
            child: Text('Kontrol et'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.sendmail();
            },
            child: Text('E-mail onayla'),
          ),
          ElevatedButton(
            onPressed: () {
              if (make.returnHowManyPet() <= 3) {
                print("3 ten az");
                
                Get.to(() => MakePetView());
              } else {
                print("3 ten fazla");
                Get.snackbar("Hata", "En fazla 3 hayvan kaydedebilirsiniz");
              }
            },
            child: Text('Evcil hayvanını kaydet'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => CalismaView());
            },
            child: Text('Çalışma alanı'),
          ),
        ],
      )),
    );
 */