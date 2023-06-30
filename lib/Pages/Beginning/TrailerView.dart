import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:pethub/Controllers/TrailerController.dart';
import 'package:pethub/Pages/LoginHome/LoginHomeView.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TrailerView extends StatelessWidget {
  TrailerView({super.key});
  TrailerController trailerController = Get.put(TrailerController());
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: trailerController.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        // ! Page 1
        Scaffold(
          backgroundColor: Color(0xFF161A1D),
          body: Center(
              child: Stack(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/Backgrounds/kedionebackground.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF161A1D).withOpacity(0.86),
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                    Color(0xFF000000).withOpacity(1),
                  ],
                )),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Text(
                            "pet",
                            style: TextStyle(
                              color: Color(0xFFBA181B),
                              fontSize: 38.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Uturna',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Text(
                            "home",
                            style: TextStyle(
                              color: Color(0xFFE5383B),
                              fontSize: 38.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Uturna',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 100.w,
                      height: 25.h,
                      //color: Colors.green.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Obx(
                            () => PageViewDotIndicator(
                              count: 3,
                              currentItem: trailerController.page,
                              unselectedSize: Size(8, 8),
                              unselectedColor: Colors.white,
                              selectedColor: Color(0xFFE5383B),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            width: 80.w,
                            height: 15.h,
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Color(0xFFB1A7A6),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    InkWell(
                      onTap: () {
                        trailerController.setPage(1);
                      },
                      child: Container(
                        width: 80.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFE5383B),
                        ),
                        child: Center(
                          child: Text(
                            "Devam et",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
        // ! Page 2
        Scaffold(
          backgroundColor: Color(0xFF161A1D),
          body: Center(
              child: Stack(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/Backgrounds/kopekonebackground.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF161A1D).withOpacity(0.86),
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                    Color(0xFF000000).withOpacity(1),
                  ],
                )),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Text(
                            "pet",
                            style: TextStyle(
                              color: Color(0xFFBA181B),
                              fontSize: 38.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Uturna',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Text(
                            "home",
                            style: TextStyle(
                              color: Color(0xFFE5383B),
                              fontSize: 38.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Uturna',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 100.w,
                      height: 25.h,
                      //color: Colors.green.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Obx(
                            () => PageViewDotIndicator(
                              count: 3,
                              currentItem: trailerController.page,
                              unselectedColor: Colors.white,
                              unselectedSize: Size(8, 8),
                              selectedColor: Color(0xFFE5383B),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            width: 80.w,
                            height: 15.h,
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Color(0xFFB1A7A6),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    InkWell(
                      onTap: () {
                        trailerController.setPage(2);
                      },
                      child: Container(
                        width: 80.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFE5383B),
                        ),
                        child: Center(
                          child: Text(
                            "Devam et",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
        // ! Page 3
        Scaffold(
          backgroundColor: Color(0xFF161A1D),
          body: Center(
              child: Stack(
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/Backgrounds/kopektwobackground.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF161A1D).withOpacity(0.86),
                    Color.fromARGB(255, 0, 0, 0).withOpacity(0.9),
                    Color(0xFF000000).withOpacity(1),
                  ],
                )),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Text(
                            "pet",
                            style: TextStyle(
                              color: Color(0xFFBA181B),
                              fontSize: 38.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Uturna',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Text(
                            "home",
                            style: TextStyle(
                              color: Color(0xFFE5383B),
                              fontSize: 38.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Uturna',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 100.w,
                      height: 25.h,
                      //color: Colors.green.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Obx(
                            () => PageViewDotIndicator(
                              count: 3,
                              currentItem: trailerController.page,
                              unselectedColor: Colors.white,
                              unselectedSize: Size(8, 8),
                              selectedColor: Color(0xFFE5383B),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            width: 80.w,
                            height: 15.h,
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Color(0xFFB1A7A6),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => LoginHomeView(),
                            transition: Transition.rightToLeft);
                      },
                      child: Container(
                        width: 80.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFE5383B),
                        ),
                        child: Center(
                          child: Text(
                            "Başla",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ],
    );
  }
}
