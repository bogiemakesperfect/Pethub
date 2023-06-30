import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pethub/Controllers/Home_controller.dart';
import 'package:pethub/Pages/MakePet/MakePetView.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EvcilHayvanlarinView extends StatelessWidget {
  EvcilHayvanlarinView({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161A1D),
      body: Column(
        children: [
          AppBar(),
          Spacer(),
          Container(
            width: 100.w,
            height: 88.h,
            padding: EdgeInsets.only(top: 5.h),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 90.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E2226),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.0.w, right: 4.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GetBuilder(
                          init: homeController,
                          builder: (value) {
                            return homeController.PetName.value == ""
                                ? Container(
                                    width: 11.w,
                                    height: 11.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.purple,
                                        size: 10.w,
                                      ),
                                    ),
                                  )
                                : Obx(() => Text(
                                      homeController.PetName.value.toString(),
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 22.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ));
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 11.w,
                              height: 11.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.blue,
                                  size: 10.w,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Container(
                              width: 11.w,
                              height: 11.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    // getx menu
                                  },
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 10.w,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: 90.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E2226),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/Svgs/LockIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.contain,
                  )),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: 90.w,
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E2226),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: SvgPicture.asset(
                    "assets/Svgs/LockIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.contain,
                  )),
                )
              ],
            ),
          )

          /* */
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
              "Petlerin",
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
