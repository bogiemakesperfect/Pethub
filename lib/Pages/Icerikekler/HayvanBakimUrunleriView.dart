import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class HayvanBakimUrunleriView extends StatelessWidget {
  const HayvanBakimUrunleriView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
      body: Column(
        children: [
          AppBar(),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 90.w,
            height: 25.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 49, 49, 49),
                  Color(0xFF4B4B4B),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Haftanın ürünü",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 100.w,
            height: 7.h,
            child: Row(
              children: [
                Container(
                  width: 30.w,
                  height: 7.h,
                  margin: EdgeInsets.only(left: 5.w),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Ürünler",
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
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 90.w,
            height: 18.h,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 15.w,
                      height: 7.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 49, 49, 49),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      width: 30.w,
                      height: 7.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 49, 49, 49),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      width: 38.w,
                      height: 7.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 49, 49, 49),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 20.w,
                      height: 7.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 49, 49, 49),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Container(
                      width: 30.w,
                      height: 7.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 49, 49, 49),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
              width: 100.w,
              height: 25.h,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Urun1(),
                    Urun1(),
                    Urun1(),
                    Urun1(),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Container Urun1() {
    return Container(
      margin: EdgeInsets.only(left: 5.w),
      width: 45.w,
      height: 25.h,
      decoration: BoxDecoration(
        color: Color(0xFF4B4B4B),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Container(
            width: 25.w,
            height: 10.h,
            child: Image.network(
                "https://w7.pngwing.com/pngs/171/312/png-transparent-cat-dingo-kitten-collar-leash-cat-collar-pet-belt-buckle-dog-collar.png"),
          ),
          Container(
              width: 35.w,
              height: 8.h,
              // color: Colors.green,
              child: Column(
                children: [
                  Text(
                    "Ürün adı",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    " açıklama açıklama açıklama açıklama",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 35.w,
            height: 5.h,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 49, 49),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Ürünü incele",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
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
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.purpleAccent,
              child: Text(
                "Ürün inceleme",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
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
