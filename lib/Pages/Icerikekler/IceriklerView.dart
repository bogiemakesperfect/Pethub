import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pethub/Pages/Icerikekler/BeslenmeView.dart';
import 'package:pethub/Pages/Icerikekler/EgzersizVeAktivitelerView.dart';
import 'package:pethub/Pages/Icerikekler/EkinliklerView.dart';
import 'package:pethub/Pages/Icerikekler/HaberlerView.dart';
import 'package:pethub/Pages/Icerikekler/HayvanBakimUrunleriView.dart';
import 'package:pethub/Pages/Icerikekler/HayvanEgitimiView.dart';
import 'package:pethub/Pages/Icerikekler/HayvanPiskolojisiView.dart';
import 'package:pethub/Pages/Icerikekler/SahiplerinTecr%C3%BCbeleriView.dart';
import 'package:pethub/Pages/Icerikekler/TrendlerView.dart';
import 'package:pethub/Pages/Icerikekler/VeterinerTavsiyesiView.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class IceriklerView extends StatelessWidget {
  const IceriklerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161A1D),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UstKisim(),
            AltKisim(),
          ],
        ),
      ),
    );
  }

  Container AltKisim() {
    return Container(
      width: 100.w,
      height: 130.h,
      //color: Colors.green.withOpacity(0.2),
      child: Column(
        children: [
          textUcretsizIcerikler(),
          Container(
              width: 100.w,
              height: 110.h,
              //color: Colors.red,
              child: Column(
                children: [
                  BeslenmeButon(),
                  EgzersizVeAktivitelerButon(),
                  HayvanPiskolojisiButon(),
                  HaberlerButon(),
                  EtkinliklerButon(),
                  TrendlerButon(),
                ],
              ))
        ],
      ),
    );
  }

  InkWell TrendlerButon() {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Get.to(() => TrendlerView(),
            transition: Transition.rightToLeftWithFade,
            duration: Duration(milliseconds: 500));
      },
      child: Container(
        width: 100.w,
        height: 15.h,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h),
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
            Positioned(
              left: 3.w,
              child: SvgPicture.asset(
                "assets/Svgs/TrendOlanlarIcon.svg",
                width: 20.w,
                height: 20.h,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
                top: 3.h,
                left: 4.w,
                right: 8.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Trendler",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 25.sp,
                    ),
                  ],
                ))

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

  InkWell EtkinliklerButon() {
    return InkWell(
      onTap: () {
        Get.to(() => EtkinliklerView(),
            transition: Transition.rightToLeftWithFade,
            duration: Duration(milliseconds: 500));
      },
      child: Container(
        width: 100.w,
        height: 15.h,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h),
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
            Positioned(
              left: 3.w,
              child: SvgPicture.asset(
                "assets/Svgs/HayvanEtkinlikleriIcon.svg",
                width: 20.w,
                height: 20.h,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
                top: 3.h,
                left: 4.w,
                right: 8.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Etkinlikler",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 25.sp,
                    ),
                  ],
                ))

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
            transition: Transition.rightToLeftWithFade);
      },
      child: Container(
        width: 100.w,
        height: 15.h,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h),
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
            Positioned(
              left: 3.w,
              child: SvgPicture.asset(
                "assets/Svgs/HayvanHaberlerIcon.svg",
                width: 20.w,
                height: 20.h,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
                top: 3.h,
                left: 4.w,
                right: 8.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Haberler",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 25.sp,
                    ),
                  ],
                ))

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

  InkWell HayvanPiskolojisiButon() {
    return InkWell(
      onTap: () {
        Get.to(() => HayvanPiskolojisiView(),
            transition: Transition.rightToLeftWithFade);
      },
      child: Container(
        width: 100.w,
        height: 15.h,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h),
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
              alignment: Alignment.center,
            ),
            Positioned(
                top: 3.h,
                left: 4.w,
                right: 8.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Hayvan Pisikolojisi",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 25.sp,
                    ),
                  ],
                ))

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

  InkWell EgzersizVeAktivitelerButon() {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Get.to(() => EgzersizVeAktivitelerView(),
            transition: Transition.rightToLeftWithFade);
      },
      child: Container(
        width: 100.w,
        height: 15.h,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h),
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
              "assets/Svgs/EgzersizVeAktivitelerIcon.svg",
              width: 20.w,
              height: 20.h,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Positioned(
                top: 3.h,
                left: 4.w,
                right: 8.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Egzersiz ve Aktiviteler",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 25.sp,
                    ),
                  ],
                ))

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

  InkWell BeslenmeButon() {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Get.to(() => BeslenmeView(),
            transition: Transition.rightToLeftWithFade);
      },
      child: Container(
        width: 100.w,
        height: 15.h,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 3.h),
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
            Positioned(
                top: 3.h,
                left: 4.w,
                right: 8.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Beslenme",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 25.sp,
                    ),
                  ],
                ))

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

  Container textUcretsizIcerikler() {
    return Container(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      width: 100.w,
      height: 8.h,
      //color: Colors.green.withOpacity(0.2),
      child: Text(
        "Ücretsiz İçerikler",
        style: GoogleFonts.poppins(
            color: Colors.white, fontSize: 22.sp, fontWeight: FontWeight.w600),
      ),
    );
  }

  Container UstKisim() {
    return Container(
      width: 100.w,
      height: 52.h,
      margin: EdgeInsets.only(top: 4.h),
      //color: Colors.red.withOpacity(0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProyaGec(),
          Container(
            padding: EdgeInsets.only(left: 4.w, right: 4.w),
            width: 100.w,
            height: 8.h,
            //color: Colors.green.withOpacity(0.2),
            child: Text(
              "Pro İçerikler",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: 100.w,
            height: 24.h,
            //color: Colors.green.withOpacity(0.2),
            child: CarouselSlider(
              items: [
                VeterinerTavsiyesiButon(),
                HayvanEgitimiButon(),
                BakimUrunuButon(),
                SahiplerinTecrubeleriButon()
              ],
              options: CarouselOptions(
                height: 25.h,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          //CarkCevir()
        ],
      ),
    );
  }

  Center SahiplerinTecrubeleriButon() {
    return Center(
        child: InkWell(
      onTap: () {
        Get.to(() => SahiplerinTecrubeleriView(),
            transition: Transition.rightToLeftWithFade,
            duration: Duration(milliseconds: 500));
      },
      child: Container(
        width: 80.w,
        height: 21.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xFFC004F3).withOpacity(0.55),
                blurRadius: 0,
                spreadRadius: 1,
                offset: Offset(-4, 4))
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF161A1D),
                Color(0xFF242729),
              ]),
          borderRadius: BorderRadius.circular(20),
          //border: Border.all(color: Color(0xFFC004F3), width: 4),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 6.w,
              child: SvgPicture.asset(
                "assets/Svgs/SahiplerinTecrübeleriIcon.svg",
                width: 23.w,
                height: 23.h,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 60.w,
                  height: 21.h,
                  // color: Colors.green.withOpacity(0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sahiplerin Tecrübeleri",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 20.w,
                      height: 10.h,
                      //color: Colors.red,
                    ),
                    Container(
                      width: 20.w,
                      height: 11.h,
                      //color: Colors.red,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                        size: 25.sp,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  Center BakimUrunuButon() {
    return Center(
        child: InkWell(
      onTap: () {
        Get.to(() => HayvanBakimUrunleriView(),
            transition: Transition.rightToLeftWithFade, duration: 0.5.seconds);
      },
      child: Container(
        width: 80.w,
        height: 21.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xFFC004F3).withOpacity(0.55),
                blurRadius: 0,
                spreadRadius: 1,
                offset: Offset(-4, 4))
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF161A1D),
                Color(0xFF242729),
              ]),
          borderRadius: BorderRadius.circular(20),
          //border: Border.all(color: Color(0xFFC004F3), width: 4),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 2.h,
              left: 4.w,
              child: SvgPicture.asset(
                "assets/Svgs/BakimUrunuIcon.svg",
                width: 26.w,
                height: 26.h,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 60.w,
                  height: 21.h,
                  // color: Colors.green.withOpacity(0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hayvan Bakım Ürünleri",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 20.w,
                      height: 10.h,
                      //color: Colors.red,
                    ),
                    Container(
                      width: 20.w,
                      height: 11.h,
                      //color: Colors.red,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                        size: 25.sp,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  Center HayvanEgitimiButon() {
    return Center(
        child: InkWell(
      onTap: () {
        Get.to(() => EvcilHayvanEgitimiView(),
            transition: Transition.rightToLeftWithFade,
            duration: Duration(milliseconds: 500));
      },
      child: Container(
        width: 80.w,
        height: 21.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xFFC004F3).withOpacity(0.55),
                blurRadius: 0,
                spreadRadius: 1,
                offset: Offset(-4, 4))
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF161A1D),
                Color(0xFF242729),
              ]),
          borderRadius: BorderRadius.circular(20),
          //border: Border.all(color: Color(0xFFC004F3), width: 4),
        ),
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/Svgs/EvcilHayvanEgitimiIcon.svg",
              width: 30.w,
              height: 30.h,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Row(
              children: [
                Container(
                  width: 60.w,
                  height: 21.h,
                  // color: Colors.green.withOpacity(0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Evcil Hayvan Eğitimi",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 20.w,
                      height: 10.h,
                      //color: Colors.red,
                    ),
                    Container(
                      width: 20.w,
                      height: 11.h,
                      //color: Colors.red,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                        size: 25.sp,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  Center VeterinerTavsiyesiButon() {
    return Center(
        child: InkWell(
      onTap: () {
        Get.to(() => VeterinerTavsiyesiView(),
            transition: Transition.rightToLeftWithFade,
            duration: Duration(milliseconds: 500));
      },
      child: Container(
        width: 80.w,
        height: 21.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xFFC004F3).withOpacity(0.55),
                blurRadius: 0,
                spreadRadius: 1,
                offset: Offset(-4, 4))
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF161A1D),
                Color(0xFF242729),
              ]),
          borderRadius: BorderRadius.circular(20),
          //border: Border.all(color: Color(0xFFC004F3), width: 4),
        ),
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/Svgs/VeterinerTavsiyesiIcon.svg",
              width: 30.w,
              height: 30.h,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Row(
              children: [
                Container(
                  width: 60.w,
                  height: 21.h,
                  // color: Colors.green.withOpacity(0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Veteriner Tavsiyesi",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
                        style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 20.w,
                      height: 10.h,
                      //color: Colors.red,
                    ),
                    Container(
                      width: 20.w,
                      height: 11.h,
                      //color: Colors.red,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.red,
                        size: 25.sp,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  Center CarkCevir() {
    return Center(
      child: Container(
          width: 80.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: Color(0xFF242729),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SizedBox(
                height: 10.h,
                width: 20.w,
                child: Center(
                  child: SvgPicture.asset(
                    "assets/Svgs/MagazaIcon.svg",
                    width: 5.5.w,
                    height: 5.5.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 55.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: Color(0xFFE5383B),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Pro özelliklerden birini kazan",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Container ProyaGec() {
    return Container(
        height: 14.h,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFF242729).withOpacity(0.6),
          borderRadius: BorderRadius.circular(20),
          //border: Border.all(color: Color(0xFFC004F3), width: 2),
        ),
        child: Center(
          child: Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: Color(0xFFC004F3),
            child: Text(
              "Proya geç",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ));
  }
}
