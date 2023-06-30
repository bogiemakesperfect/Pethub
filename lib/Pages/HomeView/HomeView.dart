import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pethub/Controllers/Home_controller.dart';
import 'package:pethub/Controllers/authentication_repository.dart';
import 'package:pethub/Controllers/pets_func_controller.dart';
import 'package:pethub/Pages/Home/CalismaView.dart';
import 'package:pethub/Pages/HomeView/Profile/ProfileView.dart';
import 'package:pethub/Pages/HomeView/SettingsView.dart';
import 'package:pethub/Pages/Icerikekler/BeslenmeView.dart';
import 'package:pethub/Pages/Icerikekler/HaberlerView.dart';
import 'package:pethub/Pages/Icerikekler/HayvanPiskolojisiView.dart';
import 'package:pethub/Pages/MakePet/MakePetView.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  AuthentiocationRepository get instance => Get.find();

  final User? user = AuthentiocationRepository.instance.firebaseUser.value;
  //
  HomeController homeController = Get.put(HomeController());
  PetFuncController petFuncController = Get.put(PetFuncController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF161A1D),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(),
            textGenelTakip(),
            SizedBox(
              height: 1.h,
            ),
            Petler(),
            SizedBox(
              height: 1.h,
            ),
            textHakkindaPro(),
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: 84.w,
              height: 39.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      BeslenmeButon(),
                      SizedBox(
                        width: 6.w,
                      ),
                      HaberlerButon(),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      HayvanPiskolojisiButon(),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                          // Pro kilit
                          width: 39.w,
                          height: 18.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white.withOpacity(0.25),
                                    blurRadius: 0,
                                    spreadRadius: 1,
                                    offset: Offset(-3, 4))
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF161A1D),
                                    Color(0xFF242729),
                                  ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/Svgs/PremiumDiamondIcon.svg",
                                fit: BoxFit.fill,
                              ),
                              Center(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Özelleştir",
                                    style: GoogleFonts.poppins(
                                        color: Color(0xFFE3354E),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    "lorem ipsum dolor sit amet",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        color: Color(0xFFADADAD),
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )),
                              Container(
                                width: 39.w,
                                height: 18.h,
                                decoration: BoxDecoration(
                                    color: Color(0xFF242729).withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              SvgPicture.asset(
                                "assets/Svgs/LockIcon.svg",
                                fit: BoxFit.fill,
                              ),
                            ],
                          ))
                    ],
                  ),
                  /* Row(
                    children: [
                      Container(
                        width: 40.w,
                        height: 17.h,
                        color: Colors.red.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                        width: 40.w,
                        height: 17.h,
                        color: Colors.red.withOpacity(0.4),
                      )
                    ],
                  ) */
                ],
              ),
            )
          ],
        ));
  }

  InkWell HayvanPiskolojisiButon() {
    return InkWell(
      onTap: () {
        Get.to(() => HayvanPiskolojisiView(),
            transition: Transition.downToUp,
            duration: Duration(milliseconds: 500));
      },
      child: Container(
        width: 39.w,
        height: 18.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.25),
                blurRadius: 0,
                spreadRadius: 1,
                offset: Offset(-3, 4))
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF161A1D),
                Color(0xFF242729),
              ]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/Svgs/HayvanPiskolojisiIcon.svg",
              width: 20.w,
              height: 20.h,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Container(
                  width: 39.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //color: Colors.black.withOpacity(0.5),
                  ),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hayvan Piskolojisi",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Color(0xFFE3354E),
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Evcij hayvanın hakkında bilgi edin",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )),
                ),
                Row(
                  children: [
                    Container(
                      width: 23.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          //color: Colors.red.withOpacity(0.5),
                          ),
                    ),
                    Container(
                      width: 16.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          //color: Colors.black.withOpacity(0.5),
                          ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                          size: 25.sp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )

            /*Positioned(
                              top: 2.h,
                              left: 2.w,
                              child: Text(
                                "Hayvan Beslenmesi",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ), */
          ],
        ),
      ),
    );
  }

  InkWell HaberlerButon() {
    return InkWell(
      onTap: () {
        Get.to(() => HaberlerView(),
            transition: Transition.downToUp,
            duration: Duration(milliseconds: 500));
      },
      child: Container(
        width: 39.w,
        height: 18.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.25),
                blurRadius: 0,
                spreadRadius: 1,
                offset: Offset(-3, 4))
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF161A1D),
                Color(0xFF242729),
              ]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/Svgs/HayvanHaberlerIcon.svg",
              width: 15.w,
              height: 15.h,
              fit: BoxFit.contain,
            ),
            Column(
              children: [
                Container(
                  width: 39.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //color: Colors.black.withOpacity(0.5),
                  ),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Haberler",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Color(0xFFE3354E),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Evcij hayvanın hakkında bilgi edin",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )),
                ),
                Row(
                  children: [
                    Container(
                      width: 23.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          //color: Colors.red.withOpacity(0.5),
                          ),
                    ),
                    Container(
                      width: 16.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          //color: Colors.black.withOpacity(0.5),
                          ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                          size: 25.sp,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )

            /*Positioned(
                                top: 2.h,
                                left: 2.w,
                                child: Text(
                                  "Hayvan Beslenmesi",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ), */
          ],
        ),
      ),
    );
  }

  Container textHakkindaPro() {
    return Container(
        padding: EdgeInsets.only(left: 8.w, right: 8.w),
        width: 100.w,
        height: 5.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Petin hakkında",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              width: 25.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: Color(0xFFC004F3),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Center(
                child: Text(
                  "Pro'ya geç",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ));
  }

  Stack Petler() {
    return Stack(
      children: [
        Container(
          width: 90.w,
          height: 23.h,
          decoration: BoxDecoration(
              color: Color(0xFF4B4B4B).withOpacity(1),
              borderRadius: BorderRadius.all(Radius.circular(40))),
          child: Column(
            children: [
              Container(
                width: 90.w,
                height: 8.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49).withOpacity(1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 15.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/Backgrounds/ProfilePic.png"),
                            fit: BoxFit.contain,
                          ),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      width: 25.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: Color(0xFF4B4B4B),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          homeController.user!.displayName.toString(),
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      width: 35.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: Color(0xFF4B4B4B),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 20.w,
                            height: 5.h,
                            // color: Colors.green,
                            child: Center(
                              child: Text(
                                homeController.user!.uid.toString(),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            width: 7.w,
                            height: 4.h,
                            //color: Colors.red,
                            child: Center(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.copy,
                                    size: 4.w,
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 90.w,
                height: 15.h,
                //color: Colors.green,
                child: petFuncController.PetName == ""
                    ? InkWell(
                        onTap: () {
                          print("tıklandı");
                        },
                        child: Lottie.asset(
                          "assets/animations/addAnim.json",
                          width: 90.w,
                          height: 30.h,
                          fit: BoxFit.contain,
                          animate: true,
                        ),
                      )
                    : Container(
                        width: 90.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: Color(0xFF4B4B4B),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 23.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Backgrounds/ProfilePic.png"),
                                    fit: BoxFit.contain,
                                  ),
                                  shape: BoxShape.circle),
                            ),
                            Container(
                              width: 65.w,
                              height: 20.h,
                              //color: Colors.green,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 22.w,
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 49, 49, 49),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Shimmer.fromColors(
                                            baseColor: Colors.white,
                                            highlightColor: Colors.grey,
                                            child: Text(
                                              petFuncController.PetName
                                                  .toString(),
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 35.w,
                                        height: 5.h,
                                        padding: EdgeInsets.only(
                                            left: 4.w, right: 4.w),
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 49, 49, 49),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            petFuncController.petCins
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1.3.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 10.w,
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 49, 49, 49),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            petFuncController.petAgeYil
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 10.w,
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 49, 49, 49),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                            child: petFuncController.petSex
                                                        .toString() ==
                                                    "Kadın"
                                                ? SvgPicture.asset(
                                                    "assets/Svgs/male.svg",
                                                    fit: BoxFit.contain,
                                                    width: 4.w,
                                                  )
                                                : SvgPicture.asset(
                                                    "assets/Svgs/female.svg",
                                                    fit: BoxFit.contain,
                                                    width: 4.w,
                                                  )),
                                      ),
                                      petFuncController.petKisir == true
                                          ? Container(
                                              width: 17.w,
                                              height: 5.h,
                                              padding: EdgeInsets.only(
                                                  left: 1.w, right: 1.w),
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 49, 49, 49),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Center(
                                                child: Text(
                                                  "kısır",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.white,
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              width: 22.w,
                                              height: 5.h,
                                              padding: EdgeInsets.only(
                                                  left: 1.w, right: 1.w),
                                              decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 49, 49, 49),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Center(
                                                child: Text(
                                                  "Kısır değil",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.white,
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
              )
            ],
          ),
        ),
        petFuncController.petType.toString() == "Kedi"
            ? Positioned(
                top: -13,
                right: 45,
                child: Container(
                  width: 20.w,
                  height: 20.h,
                  child: Lottie.asset(
                    "assets/animations/catAnim.json",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : Positioned(
                top: 39,
                right: 45,
                child: Container(
                  width: 4.w,
                  height: 4.h,
                  child: Lottie.asset(
                    "assets/animations/dogAnim.json",
                    fit: BoxFit.cover,
                  ),
                ),
              )
      ],
    );

    /*
                                 Stack(
      alignment: Alignment.center,
      children: [
        Obx(
          () => Lottie.asset(
            "assets/animations/signalAnim.json",
            height: homeController.isExpanded.value ? 0.h : 20.h,
            animate: homeController.isExpanded.value ? false : true,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (petFuncController.PetName == "") {
              Get.to(() => MakePetView());
            } else {
              homeController.toggleExpanded();
            }
          },
          child: Obx(
            () => AnimatedContainer(
                margin: homeController.isExpanded.value
                    ? EdgeInsets.only(top: 0.h, bottom: 0.h)
                    : EdgeInsets.only(top: 5.h, bottom: 5.h),
                duration: Duration(milliseconds: 600),
                curve: Curves.easeInOutCubic,
                width: homeController.isExpanded.value ? 90.w : 25.w,
                height: homeController.isExpanded.value ? 22.h : 12.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4B4B4B).withOpacity(1),
                  borderRadius: homeController.isExpanded.value
                      ? BorderRadius.all(Radius.circular(40))
                      : BorderRadius.circular(100),
                ),
                child: petFuncController.PetName == ""
                    ? SvgPicture.asset(
                        "assets/Svgs/AddIcon.svg",
                        width: 8.w,
                        height: 8.h,
                        fit: BoxFit.cover,
                        color: Colors.white,
                      )
                    : Stack(
                        children: [
                          Container(
                            width: 90.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              color: Color(0xFF4B4B4B).withOpacity(1),
                              borderRadius: homeController.isExpanded.value
                                  ? BorderRadius.all(Radius.circular(40))
                                  : BorderRadius.circular(100),
                            ),
                          ),
                          homeController.isExpanded.value == false
                              ? Lottie.asset("assets/animations/touchAnim.json",
                                  height: 50.h,
                                  width: 50.w,
                                  fit: BoxFit.contain,
                                  animate: homeController.isExpanded.value
                                      ? false
                                      : true)
                              : 
                        ],
                      )),
          ),
        )
      ],
    ); */

    /* Container(
      width: 20.w,
      height: 10.h,
      margin: EdgeInsets.only(top: 4.h, bottom: 4.h),
      color: Colors.grey,
      /* width: 90.w,
      height: 23.h,
      decoration: BoxDecoration(
        //color: Colors.white.withOpacity(0.10),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            topRight: Radius.circular(40)),

        border: Border.all(color: Colors.white.withOpacity(0.25), width: 1),
      ),
      child: Center(
          child: InkWell(
              borderRadius: BorderRadius.circular(35),
              onTap: () {
                if (petFuncController.PetName == "") {
                  Get.to(() => MakePetView());
                } else {}
              },
              child: Obx(() => petFuncController.PetName == ""
                  ? SvgPicture.asset(
                      "assets/Svgs/AddIcon.svg",
                      width: 8.w,
                      height: 8.h,
                      fit: BoxFit.cover,
                      color: Color(0xFFC004F3),
                    )
                  : Stack(
                      children: [
                        Positioned(
                          right: 0,
                          child: SvgPicture.asset(
                            petFuncController.petType.toString() == "Kedi"
                                ? "assets/Svgs/KediSayacIcon.svg"
                                : "assets/Svgs/KopekSayacIcon.svg",
                            width: 40.w,
                            height: 40.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 90.w,
                          height: 23.h,
                          decoration: BoxDecoration(
                            //color: Colors.white.withOpacity(0.10),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 1.h),
                                    width: 28.w,
                                    height: 5.h,
                                    decoration: BoxDecoration(
                                      color:
                                          Color(0xFFE5383B).withOpacity(0.75),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: Center(
                                      child: Text(
                                        petFuncController.PetName.toString(),
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 1.h),
                                    width: 46.w,
                                    height: 5.h,
                                    padding: EdgeInsets.only(left: 4.w),
                                    decoration: BoxDecoration(
                                      color:
                                          Color(0xFFE3354E).withOpacity(0.75),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: Center(
                                      child: Text(
                                        petFuncController.petCins.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Container(
                                width: 80.w,
                                height: 14.h,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE5383B).withOpacity(0.75),
                                  borderRadius: BorderRadius.circular(35),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )))), */
    ); */
  }
  /*SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          petFuncController.PetName.toString(),
                          style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 100.w,
                          height: 18.h,
                          decoration: BoxDecoration(
                            //color: Colors.green.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 34.w,
                                    height: 8.h,
                                    //color: Colors.red.withOpacity(0.2),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xFF242729),
                                            Color(0xFF242729),
                                          ]),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Türü",
                                          style: GoogleFonts.poppins(
                                              color: Colors.red,
                                              fontSize: 19.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          petFuncController.petType.toString(),
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 34.w,
                                    height: 8.h,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xFF242729),
                                            Color(0xFF242729),
                                          ]),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Cinsi",
                                          style: GoogleFonts.poppins(
                                              color: Colors.red,
                                              fontSize: 19.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          petFuncController.petCins.toString(),
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 34.w,
                                    height: 8.h,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xFF242729),
                                            Color(0xFF242729),
                                          ]),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Yaşı",
                                          style: GoogleFonts.poppins(
                                              color: Colors.red,
                                              fontSize: 19.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "${petFuncController.petAgeYil.toString()} yıl ${petFuncController.petAgeAy.toString()} ay",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 34.w,
                                    height: 8.h,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xFF242729),
                                            Color(0xFF242729),
                                          ]),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Cinsiyeti",
                                          style: GoogleFonts.poppins(
                                              color: Colors.red,
                                              fontSize: 19.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          petFuncController.petSex.toString() ==
                                                  "Kadın"
                                              ? "Dişi"
                                              : "Erkek",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )

                        /* Text(
                                homeController.petType.toString(),
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                homeController.petCins.toString(),
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                homeController.petSex.toString() == "Kadın"
                                    ? "Dişi"
                                    : "Erkek",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600),
                              ), */
                      ],
                    ),
                  ))),
      ), */

  Container textGenelTakip() {
    return Container(
      padding: EdgeInsets.only(left: 8.w),
      width: 100.w,
      height: 5.h,
      child: Text(
        "Genel takip",
        style: GoogleFonts.poppins(
            color: Colors.white, fontSize: 22.sp, fontWeight: FontWeight.w600),
      ),
    );
  }

  Container AppBar() {
    return Container(
      width: 100.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 20.w,
            height: 8.h,
            child: Center(
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Get.to(() => SettingsView());
                },
                child: SvgPicture.asset(
                  "assets/Svgs/SettingIcon.svg",
                  width: 5.w,
                  height: 5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: 60.w,
            height: 8.h,
            child: Center(
                child: Container(
              width: 25.w,
              height: 5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  user!.displayName.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Uturna"),
                ),
              ),
            )),
          ),
          Container(
            width: 20.w,
            height: 8.h,
            child: Center(
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Get.to(() => ProfileView());
                },
                child: SvgPicture.asset(
                  "assets/Svgs/ProfileIcon.svg",
                  width: 5.w,
                  height: 5.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

InkWell BeslenmeButon() {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    onTap: () {
      Get.to(() => BeslenmeView(),
          transition: Transition.downToUp,
          duration: Duration(milliseconds: 500));
    },
    child: Container(
      width: 39.w,
      height: 18.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.white.withOpacity(0.25),
              blurRadius: 0,
              spreadRadius: 1,
              offset: Offset(-3, 4))
        ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF161A1D),
              Color(0xFF242729),
            ]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          SvgPicture.asset(
            "assets/Svgs/HayvanBeslenmeIcon.svg",
            width: 20.w,
            height: 20.h,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Column(
            children: [
              Container(
                width: 39.w,
                height: 12.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Colors.black.withOpacity(0.5),
                ),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Beslenme",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Color(0xFFE3354E),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Evcij hayvanın hakkında bilgi edin",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )),
              ),
              Row(
                children: [
                  Container(
                    width: 23.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                        //color: Colors.red.withOpacity(0.5),
                        ),
                  ),
                  Container(
                    width: 16.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                        //color: Colors.black.withOpacity(0.5),
                        ),
                    child: Center(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(40),
                        onTap: () {
                          Get.to(() => CalismaView());
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                          size: 25.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )

          /*Positioned(
                                  top: 2.h,
                                  left: 2.w,
                                  child: Text(
                                    "Hayvan Beslenmesi",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ), */
        ],
      ),
    ),
  );
}
