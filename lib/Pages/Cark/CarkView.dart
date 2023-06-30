import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pethub/Controllers/Cark_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class CarkView extends StatelessWidget {
  CarkView({super.key});

  CarkController carkCont = Get.put(CarkController());

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      //'Grogu',
      //'Mace Windu',
      //'Obi-Wan Kenobi',
      //'Han Solo',
      'Luke Skywalker',
      'Darth Vader',
      'Yoda',
      'Ahsoka Tano',
    ];
var selected = StreamController<int>(); 
    return Scaffold(
      backgroundColor: Color(0xFF161A1D),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 53.h,
              width: 100.w,
              //color: Colors.green,
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Positioned(
                    right: -80,
                    top: -180,
                    child: Container(
                      width: 140.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF161A1D),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Container(
                        width: 100.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF161A1D),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: FortuneWheel(
                          indicators: <FortuneIndicator>[
                            FortuneIndicator(
                                alignment: Alignment
                                    .bottomCenter, // <-- changing the position of the indicator
                                child: SvgPicture.asset(
                                  "assets/Svgs/CarkIndicatorIcon.svg",
                                  width: 5.w,
                                  height: 5.h,
                                  color: Colors.white,
                                  fit: BoxFit.contain,
                                )),
                          ],
                          duration: Duration(seconds: 10),
                          onFling: () {
                            print('Flinged');
                          },
                          styleStrategy: UniformStyleStrategy(
                            color: Color(0xFFE5383B),
                            disabledIndices: [
                              0,
                              2,
                              4,
                              6,
                              8,
                              10,
                              12,
                              14,
                              16,
                              18,
                              20
                            ],
                            borderColor: Color(0xFFE5383B),
                            borderWidth: 3,
                          ),
                          rotationCount: 5,
                          curve: Curves.decelerate,
                          animateFirst: false,
                          onAnimationStart: () {
                            print('Animation started');

                            carkCont.tiklanabilir.value = false;
                          },
                          onAnimationEnd: () {
                            print('Animation ended');
                            carkCont.tiklanabilir.value = true;
                          },
                          selected: selected.stream,
                          items: [
                            for (var it in items) FortuneItem(child: Text(it)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 100.w,
            height: 14.h,
            //color: Colors.red,
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Cevir ve",
                  style: TextStyle(
                    color: Color(0xFFE5383B),
                    fontSize: 30.sp,
                    fontFamily: 'Sweaty',
                  ),
                ),
                Text(
                  "Kazan",
                  style: TextStyle(
                    color: Color(0xFFC004F3),
                    fontSize: 30.sp,
                    fontFamily: 'Sweaty',
                  ),
                ),
              ],
            )),
          ),
          SizedBox(
            height: 2.h,
          ),
          InkWell(
            onTap: carkCont.tiklanabilir.value
                ? () {
                    carkCont.tiklanabilir.value = false;
                    selected.add(1);
                  }
                : null,
            child: Container(
              width: 75.w,
              height: 15.h,
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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Center(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: Color(0xFFE5383B),
                    highlightColor: Color(0xFFC004F3),
                    child: Text(
                      "Cevir",
                      style: TextStyle(
                        color: Color(0xFFE5383B),
                        fontSize: 30.sp,
                        fontFamily: 'Sweaty',
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 100.w,
            height: 2.h,
            //color: Colors.red,
            child: Center(
              child: Text(
                "Kalan Hakkın: 3",
                style: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
