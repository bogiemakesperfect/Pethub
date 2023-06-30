import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class VeterinerTavsiyesiView extends StatelessWidget {
  const VeterinerTavsiyesiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 90.w,
              height: 7.h,
              padding: EdgeInsets.only(left: 2.w, right: 2.w),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 49, 49, 49),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Genel Sorunlar",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 2.w),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 9.w,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            GenelSorunlar(),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 90.w,
              height: 7.h,
              child: Row(
                children: [
                  Container(
                    width: 45.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 49, 49, 49),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "İlaç rehberi",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            IlacRehberi(),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: 90.w,
              height: 25.h,
              padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 49, 49, 49),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Canlı destek",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Uzman Veterinerlerimizle canlı olarak görüşebilirsiniz.",
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 90.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: Color(0xFF4B4B4B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 55.w,
                          height: 8.h,
                          margin: EdgeInsets.all(1.w),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 36, 34, 34),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Soru sorun",
                              hintStyle: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              contentPadding: EdgeInsets.only(
                                left: 5.w,
                                top: 2.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Container(
                          width: 25.w,
                          height: 8.h,
                          margin: EdgeInsets.all(1.w),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(-4, 4),
                              ),
                            ],
                            color: Color.fromARGB(255, 36, 34, 34),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Shimmer.fromColors(
                              baseColor: Colors.white,
                              highlightColor: Colors.redAccent,
                              child: Text(
                                "1000 TL",
                                style: GoogleFonts.poppins(
                                  color: Colors.purpleAccent,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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

  Container IlacRehberi() {
    return Container(
      width: 100.w,
      height: 25.h,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
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
                    height: 13.h,
                    child: Image.network(
                        "https://bereketilac.com/wp-content/uploads/2020/12/kapsul-dolum-bereket-ilac.png"),
                  ),
                  Container(
                      width: 35.w,
                      height: 10.h,
                      child: Column(
                        children: [
                          Text(
                            "İlaç adı",
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
                      ))
                ],
              ),
            ),
            Container(
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
                    height: 13.h,
                    child: Image.network(
                        "https://bereketilac.com/wp-content/uploads/2020/12/kapsul-dolum-bereket-ilac.png"),
                  ),
                  Container(
                      width: 35.w,
                      height: 10.h,
                      child: Column(
                        children: [
                          Text(
                            "İlaç adı",
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
                      ))
                ],
              ),
            ),
            Container(
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
                    height: 13.h,
                    child: Image.network(
                        "https://bereketilac.com/wp-content/uploads/2020/12/kapsul-dolum-bereket-ilac.png"),
                  ),
                  Container(
                      width: 35.w,
                      height: 10.h,
                      child: Column(
                        children: [
                          Text(
                            "İlaç adı",
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
                      ))
                ],
              ),
            ),
            Container(
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
                    height: 13.h,
                    child: Image.network(
                        "https://bereketilac.com/wp-content/uploads/2020/12/kapsul-dolum-bereket-ilac.png"),
                  ),
                  Container(
                      width: 35.w,
                      height: 10.h,
                      child: Column(
                        children: [
                          Text(
                            "İlaç adı",
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
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container GenelSorunlar() {
    return Container(
        width: 120.w,
        height: 8.h,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5.w),
                width: 35.w,
                height: 7.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4B4B4B),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Enfeksiyonlar",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.w),
                width: 65.w,
                height: 7.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4B4B4B),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Sindirim sistemi hastalıkları",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.w),
                width: 65.w,
                height: 7.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4B4B4B),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Solunum yolu hastalıkları",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.w),
                width: 55.w,
                height: 7.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4B4B4B),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("İdrar yolu hastalıkları",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.w),
                width: 65.w,
                height: 7.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4B4B4B),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Kardiyovasküler hastalıklar",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.w),
                width: 50.w,
                height: 7.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4B4B4B),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text("Endokrin hastalıkları",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ),
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
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.purpleAccent,
              child: Text(
                "Veteriner",
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
