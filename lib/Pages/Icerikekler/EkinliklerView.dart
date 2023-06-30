import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EtkinliklerView extends StatelessWidget {
  const EtkinliklerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            AppBar(),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 100.w,
              height: 110.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 140,
                    child: SvgPicture.asset(
                      "assets/Svgs/HayvanEtkinlikleriIcon.svg",
                      width: 80.w,
                      height: 80.h,
                      fit: BoxFit.cover,
                      color: Color(0xFF353535).withOpacity(0.2),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                        ),
                        child: Text("Buluşmalar",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 5.w,
                            ),
                            width: 35.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Yakında",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: 25.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Bitmiş",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Bulusma1(),
                      SizedBox(
                        height: 2.h,
                      ),
                      Bulusma2(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container Bulusma2() {
    return Container(
                      margin: EdgeInsets.only(
                        left: 5.w,
                      ),
                      width: 90.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF353535),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 3.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 218, 190, 190),
                                  Color.fromARGB(255, 238, 220, 220),
                                  Color.fromARGB(255, 134, 120, 120),
                                ],
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 85.w,
                                height: 12.5.h,
                                //color: Colors.green,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 2.w,
                                      ),
                                      width: 15.w,
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Jacob Smith",
                                          style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "12.12.2021",
                                          style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 6.w,
                                ),
                                width: 80.w,
                                height: 7.h,
                                //color: Colors.red,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(255, 180, 179, 179),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(
                                    left: 6.w,
                                  ),
                                  width: 80.w,
                                  height: 7.h,
                                  //color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "03:00",
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "İstanbul",
                                        style: GoogleFonts.poppins(
                                          color: Colors.red,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(
                                    left: 6.w,
                                  ),
                                  width: 80.w,
                                  height: 7.h,
                                  //color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 35.w,
                                        height: 10.h,
                                        decoration: BoxDecoration(
                                          color: Colors.greenAccent
                                              .withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Katıl",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        width: 35.w,
                                        height: 10.h,
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent
                                              .withOpacity(0.5),
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "İptal",
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          )
                        ],
                      ),
                    );
  }

  Container Bulusma1() {
    return Container(
      margin: EdgeInsets.only(
        left: 5.w,
      ),
      width: 90.w,
      height: 35.h,
      decoration: BoxDecoration(
        color: Color(0xFF353535),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 3.w,
            height: 35.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 243, 24, 24),
                  Color.fromARGB(255, 231, 111, 111),
                  Color.fromARGB(255, 231, 111, 111),
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 85.w,
                height: 12.5.h,
                //color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 2.w,
                      ),
                      width: 15.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Jacob Smith",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "12.12.2021",
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 6.w,
                ),
                width: 80.w,
                height: 7.h,
                //color: Colors.red,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                  style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 180, 179, 179),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: 6.w,
                  ),
                  width: 80.w,
                  height: 7.h,
                  //color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "03:00",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "İstanbul",
                        style: GoogleFonts.poppins(
                          color: Colors.red,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(
                    left: 6.w,
                  ),
                  width: 80.w,
                  height: 7.h,
                  //color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 35.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Katıl",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        width: 35.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(
                            50,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "İptal",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
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
              "Etkinlikler",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
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
