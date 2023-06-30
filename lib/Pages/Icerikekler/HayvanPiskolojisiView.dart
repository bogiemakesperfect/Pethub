import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HayvanPiskolojisiView extends StatelessWidget {
  const HayvanPiskolojisiView({super.key});

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
                height: 85.h,
                //color: Colors.green,
                child: Stack(
                  children: [
                    Positioned(
                      top: 170,
                      left: -180,
                      child: SvgPicture.asset(
                        "assets/Svgs/HayvanPiskolojisiIcon.svg",
                        width: 70.w,
                        height: 70.h,
                        fit: BoxFit.cover,
                        color: Color(0xFF353535).withOpacity(0.6),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5.w, right: 5.w),
                            child: Text(
                              "İyi gelecek şeyler",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            width: 100.w,
                            height: 35.h,
                            //color: Colors.green.withOpacity(0.3),
                            child: Container(
                                width: 100.w,
                                height: 40.h,
                                child: CarouselSlider.builder(
                                  itemCount: 3,
                                  itemBuilder: (context, index, realIndex) {
                                    return Container(
                                      width: 100.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color:
                                            Colors.greenAccent.withOpacity(1),
                                      ),
                                    );
                                  },
                                  options: CarouselOptions(
                                    height: 30.h,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 0.8,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 3),
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.w, right: 5.w),
                            child: Text(
                              "Kötü gelecek şeyler",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            width: 100.w,
                            height: 35.h,
                            //color: Colors.green.withOpacity(0.3),
                            child: Container(
                                width: 100.w,
                                height: 40.h,
                                child: CarouselSlider.builder(
                                  itemCount: 3,
                                  itemBuilder: (context, index, realIndex) {
                                    return Container(
                                      width: 100.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.redAccent.withOpacity(1),
                                      ),
                                    );
                                  },
                                  options: CarouselOptions(
                                    height: 30.h,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 0.8,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 3),
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                  ),
                                )),
                          ),

                          /* Column(
                        children: [


                          /*  Buton1(),
                          SizedBox(
                            height: 4.h,
                          ),
                          Buton2(),
                          SizedBox(
                            height: 4.h,
                          ),
                          Buton3(),
                          SizedBox(
                            height: 4.h,
                          ),
                          Buton4(),
                          SizedBox(
                            height: 2.h,
                          ),
                          ProyaGec(), */
                        ],
                      ), */
                        ]),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Container ProyaGec() {
    return Container(
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
        ));
  }

  Padding Buton4() {
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
            color: Color(0xFF162229),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Center(
            child: Text(
              "Hayvan Psikolojisi",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        collapsed: Container(),
        expanded: Container(
          width: 97.w,
          height: 30.h,
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 0.h),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 30, 42, 48),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Center(
            child: Text(
              "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam lorem, nec lacinia nunc lorem eget nunc. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam lorem, nec lacinia nunc lorem eget nunc.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding Buton3() {
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
            color: Color(0xFF162229),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Center(
            child: Text(
              "Hayvan Psikolojisi",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        collapsed: Container(),
        expanded: Container(
          width: 97.w,
          height: 30.h,
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 0.h),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 30, 42, 48),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Center(
            child: Text(
              "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam lorem, nec lacinia nunc lorem eget nunc. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam lorem, nec lacinia nunc lorem eget nunc.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding Buton2() {
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
            color: Color(0xFF162229),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Center(
            child: Text(
              "Hayvan Psikolojisi",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        collapsed: Container(),
        expanded: Container(
          width: 97.w,
          height: 30.h,
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 0.h),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 30, 42, 48),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Center(
            child: Text(
              "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam lorem, nec lacinia nunc lorem eget nunc. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam lorem, nec lacinia nunc lorem eget nunc.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding Buton1() {
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
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                "Hayvan Psikolojisi",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
        collapsed: Container(),
        expanded: Container(
          width: 97.w,
          height: 30.h,
          padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 0.h),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Text(
                "lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam lorem, nec lacinia nunc lorem eget nunc. Sed euismod, nunc sit amet aliquam lacinia, nunc nisl aliquam lorem, nec lacinia nunc lorem eget nunc.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
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
              "Hayvan Psikolojisi",
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
