import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pethub/Controllers/Home_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class EgzersizVeAktivitelerView extends StatelessWidget {
  EgzersizVeAktivitelerView({super.key});
  HomeController homeController = Get.put(HomeController());
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
                  top: 170,
                  left: -150,
                  child: SvgPicture.asset(
                    "assets/Svgs/EgzersizVeAktivitelerIcon.svg",
                    width: 80.w,
                    height: 80.h,
                    fit: BoxFit.cover,
                    color: Color(0xFF353535).withOpacity(0.6),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 90.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF162229),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Container(
                        width: 90.w,
                        height: 7.h,
                        margin: EdgeInsets.only(top: 2.h, bottom: 2.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF242729).withOpacity(0.6),
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
                        )),
                    Container(
                      width: 90.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF162229),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
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
            child: Text(
              "Egzersiz ve Aktiviteler",
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
