import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class TrendlerView extends StatelessWidget {
  const TrendlerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(),
            SizedBox(
              height: 3.h,
            ),
            Container(
              width: 100.w,
              height: 125.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 200,
                    right: 50,
                    child: SvgPicture.asset(
                      "assets/Svgs/TrendOlanlarIcon.svg",
                      width: 50.w,
                      height: 50.h,
                      fit: BoxFit.cover,
                      color: Color(0xFF353535).withOpacity(0.3),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 90.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 37, 35, 35),
                              Color.fromARGB(255, 49, 49, 49),
                              Color.fromARGB(255, 37, 35, 35),
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.purpleAccent,
                            child: Text(
                              "Aylık Trendler",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Shimmer(
                        period: Duration(milliseconds: 11000),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.purpleAccent,
                            Color.fromARGB(255, 221, 67, 248),
                          ],
                        ),
                        direction: ShimmerDirection.ttb,
                        loop: 100,
                        child: Container(
                          width: 90.w,
                          height: 65.h,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 49, 49, 49)
                                .withOpacity(0.3),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding AylikTrendButon() {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      child: ExpandablePanel(
        theme: ExpandableThemeData(
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          tapBodyToCollapse: true,
          hasIcon: false,
        ),
        header: Container(
            width: 90.w,
            height: 15.h,
            decoration: BoxDecoration(
              color: Color(0xFF353535).withOpacity(1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Aylık Trendler",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  width: 100.w,
                  height: 1.h,
                  color: Colors.purpleAccent,
                )
              ],
            )),
        collapsed: Container(),
        expanded: Container(
            width: 97.w,
            height: 60.h,
            padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purpleAccent.withOpacity(0.3),
                    Color(0xFF353535).withOpacity(0.3),
                  ]),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  AylikTrend1(),
                  SizedBox(
                    height: 2.h,
                  ),
                  AylikTrend2(),
                  SizedBox(
                    height: 2.h,
                  ),
                  AylikTrend3(),
                  SizedBox(
                    height: 2.h,
                  ),
                  AylikTrend4(),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Container AylikTrend4() {
    return Container(
      width: 100.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 10.w,
            height: 8.h,
            //color: Colors.green,
            child: Center(
              child: Text(
                "4",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Container(
            width: 55.w,
            height: 8.h,
            child: Center(
              child: Text(
                "Scottish Fold",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Container(
            width: 15.w,
            height: 8.h,
            child: Center(
                child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20.sp,
            )),
          )
        ],
      ),
    );
  }

  Container AylikTrend3() {
    return Container(
      width: 100.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: Colors.purpleAccent.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 10.w,
            height: 8.h,
            //color: Colors.green,
            child: Center(
              child: Text(
                "3",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Container(
            width: 55.w,
            height: 8.h,
            child: Center(
              child: Text(
                "Scottish Fold",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Container(
            width: 15.w,
            height: 8.h,
            child: Center(
                child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20.sp,
            )),
          )
        ],
      ),
    );
  }

  Container AylikTrend2() {
    return Container(
      width: 100.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: Colors.purpleAccent.withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 10.w,
            height: 8.h,
            //color: Colors.green,
            child: Center(
              child: Text(
                "2",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Container(
            width: 55.w,
            height: 8.h,
            child: Center(
              child: Text(
                "Scottish Fold",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Container(
            width: 15.w,
            height: 8.h,
            child: Center(
                child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20.sp,
            )),
          )
        ],
      ),
    );
  }

  Container AylikTrend1() {
    return Container(
      width: 100.w,
      height: 8.h,
      decoration: BoxDecoration(
        color: Colors.purpleAccent.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 10.w,
            height: 8.h,
            //color: Colors.green,
            child: Center(
              child: Text(
                "1",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2.w,
          ),
          Container(
            width: 55.w,
            height: 8.h,
            child: Center(
              child: Text(
                "Scottish Fold",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Container(
            width: 15.w,
            height: 8.h,
            child: Center(
                child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20.sp,
            )),
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
              "Trendler",
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

Padding HaftalikTrendButon() {
  return Padding(
    padding: EdgeInsets.only(left: 4.w, right: 4.w),
    child: ExpandablePanel(
      theme: ExpandableThemeData(
        headerAlignment: ExpandablePanelHeaderAlignment.center,
        tapBodyToCollapse: true,
        hasIcon: false,
      ),
      header: Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red.withOpacity(0.9),
                Colors.redAccent.withOpacity(0.6),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Haftalık Trendler",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                width: 100.w,
                height: 1.h,
                color: Colors.red,
              )
            ],
          )),
      collapsed: Container(),
      expanded: Container(
          width: 97.w,
          height: 30.h,
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red.withOpacity(0.3),
                  Color(0xFF353535).withOpacity(0.3),
                ]),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                HaftalikTrend1(),
                SizedBox(
                  height: 2.h,
                ),
                HaftalikTrend2(),
                SizedBox(
                  height: 2.h,
                ),
                HaftalikTrend3(),
                SizedBox(
                  height: 2.h,
                ),
                HaftalikTrend4(),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          )),
    ),
  );
}

Container HaftalikTrend4() {
  return Container(
    width: 100.w,
    height: 8.h,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.3),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          width: 10.w,
          height: 8.h,
          //color: Colors.green,
          child: Center(
            child: Text(
              "4",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          width: 55.w,
          height: 8.h,
          child: Center(
            child: Text(
              "Scottish Fold",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        Container(
          width: 15.w,
          height: 8.h,
          child: Center(
              child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20.sp,
          )),
        )
      ],
    ),
  );
}

Container HaftalikTrend3() {
  return Container(
    width: 100.w,
    height: 8.h,
    decoration: BoxDecoration(
      color: Colors.red.withOpacity(0.3),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          width: 10.w,
          height: 8.h,
          //color: Colors.green,
          child: Center(
            child: Text(
              "3",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          width: 55.w,
          height: 8.h,
          child: Center(
            child: Text(
              "Scottish Fold",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        Container(
          width: 15.w,
          height: 8.h,
          child: Center(
              child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20.sp,
          )),
        )
      ],
    ),
  );
}

Container HaftalikTrend2() {
  return Container(
    width: 100.w,
    height: 8.h,
    decoration: BoxDecoration(
      color: Colors.red.withOpacity(0.6),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          width: 10.w,
          height: 8.h,
          //color: Colors.green,
          child: Center(
            child: Text(
              "2",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          width: 55.w,
          height: 8.h,
          child: Center(
            child: Text(
              "Scottish Fold",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        Container(
          width: 15.w,
          height: 8.h,
          child: Center(
              child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20.sp,
          )),
        )
      ],
    ),
  );
}

Container HaftalikTrend1() {
  return Container(
    width: 100.w,
    height: 8.h,
    decoration: BoxDecoration(
      color: Colors.red.withOpacity(0.9),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          width: 10.w,
          height: 8.h,
          //color: Colors.green,
          child: Center(
            child: Text(
              "1",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          width: 55.w,
          height: 8.h,
          child: Center(
            child: Text(
              "Scottish Fold",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        Container(
          width: 15.w,
          height: 8.h,
          child: Center(
              child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 20.sp,
          )),
        )
      ],
    ),
  );
}
