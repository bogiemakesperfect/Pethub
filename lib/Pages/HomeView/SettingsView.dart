import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF161A1D),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(),
              Container(
                width: 100.w,
                height: 125.h,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Buttons(),
              ),
            ],
          ),
        ));
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
              "Ayarlar",
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

Container Buttons() {
  return Container(
      width: 100.w,
      height: 75.h,
      child: Column(
        children: [
          Container(
              height: 10.h,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFC004F3).withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Shimmer(
                  period: Duration(milliseconds: 15000),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFC004F3),
                      Color(0xFFC004F3).withOpacity(0.4),
                    ],
                  ),
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
            height: 10.h,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Svgs/ProfileIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Hesap Ayarları",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Svgs/BildirimlerIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Bildirimler",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Svgs/PuanlaIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Uygulamayı puanlar mısın?",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SvgPicture.asset(
                  "assets/Svgs/SorunBildirIcon.svg",
                  width: 5.w,
                  height: 5.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Sorun bildir",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                ),
              ]),
            ),
          ),
          Container(
            height: 10.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Svgs/SatinAlinanlariYükleIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Satın alınanları geri yükle",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Svgs/KullanimKosullariIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Kullanım koşulları",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Svgs/GizlilikIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Gizlilik politikası",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Svgs/GeriBildirimIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Geri bildirim ver",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10.h,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF161A1D),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/Svgs/AboneliklerIcon.svg",
                    width: 5.w,
                    height: 5.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Abonelikler hakkında",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ));
}
