import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class SahiplerinTecrubeleriView extends StatelessWidget {
  const SahiplerinTecrubeleriView({super.key});

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
            width: 100.w,
            height: 7.h,
            child: Row(
              children: [
                Container(
                  width: 80.w,
                  height: 7.h,
                  margin: EdgeInsets.only(left: 5.w),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Kullanıcıların Deneyimleri",
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
            height: 48.h,
            decoration: BoxDecoration(
              color: Color(0xFF4B4B4B),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 2.h),
                    width: 80.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 15.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40.w,
                              height: 3.h,
                              child: Text(
                                "Kullanıcı Adı",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 2.5.h,
                              child: Text(
                                "Cins adı",
                                style: GoogleFonts.poppins(
                                  color: Colors.redAccent,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 6.h,
                              //color: Colors.green,
                              child: Text(
                                "lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 10.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2.h),
                    width: 80.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 15.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40.w,
                              height: 3.h,
                              child: Text(
                                "Kullanıcı Adı",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 2.5.h,
                              child: Text(
                                "Cins adı",
                                style: GoogleFonts.poppins(
                                  color: Colors.redAccent,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 6.h,
                              //color: Colors.green,
                              child: Text(
                                "lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 10.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2.h),
                    width: 80.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 15.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40.w,
                              height: 3.h,
                              child: Text(
                                "Kullanıcı Adı",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 2.5.h,
                              child: Text(
                                "Cins adı",
                                style: GoogleFonts.poppins(
                                  color: Colors.redAccent,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 6.h,
                              //color: Colors.green,
                              child: Text(
                                "lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 10.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2.h, bottom: 2.h),
                    width: 80.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 15.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40.w,
                              height: 3.h,
                              child: Text(
                                "Kullanıcı Adı",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 2.5.h,
                              child: Text(
                                "Cins adı",
                                style: GoogleFonts.poppins(
                                  color: Colors.redAccent,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              width: 40.w,
                              height: 6.h,
                              //color: Colors.green,
                              child: Text(
                                "lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 10.w,
                          height: 12.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 100.w,
            height: 7.h,
            margin: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 75.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Deneyimlerinizi Paylaşın",
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
          Stack(
            alignment: Alignment.center,
            children: [
              Shimmer.fromColors(
                baseColor: Colors.transparent,
                highlightColor: Colors.greenAccent,
                period: Duration(milliseconds: 2000),
                child: Container(
                  width: 90.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 40, 44, 42).withOpacity(0.2),
                    ),
                    color: Color.fromARGB(255, 40, 44, 42).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 30.sp,
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
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
              child: Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: Colors.purpleAccent,
            child: Text(
              "Sahiplerin tecrübeleri",
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
