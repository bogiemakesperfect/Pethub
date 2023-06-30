import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pethub/Pages/HomeView/Profile/EvcilHayvanlar%C4%B1nView.dart';
import 'package:pethub/Pages/HomeView/SettingsView.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF161A1D),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(),
              Container(
                width: 100.w,
                height: 125.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    ProfileBackSide(),
                    SizedBox(
                      height: 1.h,
                    ),
                    PetlerimVeUcretsiz(),
                    Kullaniciadi(),
                    Buttons()
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Container Buttons() {
    return Container(
        width: 100.w,
        height: 75.h,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(() => EvcilHayvanlarinView());
              },
              child: Container(
                height: 10.h,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF161A1D),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Evcil hayvanlarını düzenle",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SvgPicture.asset(
                        "assets/Svgs/ArrowForward.svg",
                        width: 5.w,
                        height: 5.h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 10.h,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Profilini düzenle",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SvgPicture.asset(
                      "assets/Svgs/ArrowForward.svg",
                      width: 5.w,
                      height: 5.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10.h,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFC004F3).withOpacity(0.4),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Proya geç",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SvgPicture.asset(
                      "assets/Svgs/ArrowForward.svg",
                      width: 5.w,
                      height: 5.h,
                      fit: BoxFit.cover,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10.h,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Haftalık Sıralama",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SvgPicture.asset(
                      "assets/Svgs/ArrowForward.svg",
                      width: 5.w,
                      height: 5.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10.h,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ödüller",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SvgPicture.asset(
                      "assets/Svgs/ArrowForward.svg",
                      width: 5.w,
                      height: 5.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10.h,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Çıkış yap",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    SvgPicture.asset(
                      "assets/Svgs/backbutton.svg",
                      width: 5.w,
                      height: 5.h,
                      fit: BoxFit.cover,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Container Kullaniciadi() {
    return Container(
      width: 100.w,
      height: 9.h,
      child: Column(
        children: [
          Text(
            "Buğra kul",
            style: GoogleFonts.roboto(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          Text(
            "bogie",
            style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontFamily: "Uturna"),
          ),
        ],
      ),
    );
  }

  Container PetlerimVeUcretsiz() {
    return Container(
      width: 100.w,
      height: 10.h,
      child: Row(
        children: [
          Container(
            width: 28.w,
            height: 10.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/Svgs/KediSayacIcon.svg",
                      width: 5.w,
                      height: 5.h,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "1",
                      style: GoogleFonts.roboto(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/Svgs/KopekSayacIcon.svg",
                      width: 5.w,
                      height: 5.h,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "0",
                      style: GoogleFonts.roboto(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 43.w,
            height: 10.h,
          ),
          Container(
            width: 28.w,
            height: 10.h,
            margin: EdgeInsets.only(bottom: 4.h),
            child: Center(
              child: Text(
                "ücretsiz",
                style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFE5383B)),
              ),
            ),
          )
        ],
      ),
    );
  }

  Stack ProfileBackSide() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          width: 100.w,
          height: 30.h,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 45, 46, 45),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
        ),
        Positioned(
          top: 55,
          child: Container(
            width: 46.w,
            height: 46.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Backgrounds/ProfilePic.png"),
                fit: BoxFit.contain,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 10,
              ),
            ),
          ),
        )
      ],
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
                  Get.back();
                },
                child: SvgPicture.asset(
                  "assets/Svgs/backbutton.svg",
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
                child: Center(
              child: Text(
                "Profil",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
          ),
          Container(
            width: 20.w,
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
