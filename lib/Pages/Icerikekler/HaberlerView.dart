import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HaberlerView extends StatelessWidget {
  const HaberlerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
      body: Column(
        children: [
          AppBar(),
          SizedBox(
            height: 3.h,
          ),
          Container(
            width: 100.w,
            height: 85.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 200,
                  right: -80,
                  child: SvgPicture.asset(
                    "assets/Svgs/HayvanHaberlerIcon.svg",
                    width: 60.w,
                    height: 60.h,
                    fit: BoxFit.cover,
                    color: Color(0xFF353535).withOpacity(0.3),
                  ),
                ),
                Column(
                  children: [
                    BasHaber(),
                    SizedBox(
                      height: 2.h,
                    ),
                    Haber1(),
                    SizedBox(
                      height: 2.h,
                    ),
                    Haber2(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  InkWell Haber2() {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Container(
        width: 90.w,
        height: 20.h,
        decoration: BoxDecoration(
          // color: Colors.greenAccent.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: Color(0xFF162229),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  "Resim eklenecek",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 2.w, right: 2.w, top: 2.h, bottom: 2.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Haber başlığı",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "lorem ipsum dolor sit\nconsectetur adipiscing",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell Haber1() {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Container(
        width: 90.w,
        height: 20.h,
        decoration: BoxDecoration(
          // color: Colors.greenAccent.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: Color(0xFF162229),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(
                child: Text(
                  "Resim eklenecek",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 2.w, right: 2.w, top: 2.h, bottom: 2.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Haber başlığı",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "lorem ipsum dolor sit\nconsectetur adipiscing",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell BasHaber() {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Container(
        width: 90.w,
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
                width: 90.w,
                height: 20.h,
                decoration: BoxDecoration(
                  color: Color(0xFF162229),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    "Resim eklenecek",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Haber başlığı",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "lorem ipsum dolor sit amet, consectetur adipiscing elit, ",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
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
            child: Text(
              "Haberler",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Container(
          width: 20.w,
          height: 8.h,
        ),
      ],
    ),
  );
}
