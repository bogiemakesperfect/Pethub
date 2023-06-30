import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class EvcilHayvanEgitimiView extends StatelessWidget {
  const EvcilHayvanEgitimiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1A1A1A),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            width: 100.w,
            height: 120.h,
            child: Column(
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
                        width: 50.w,
                        height: 7.h,
                        margin: EdgeInsets.only(left: 5.w),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 49, 49, 49),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Zorluk Derecesi",
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
                  width: 100.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Container(
                          width: 25.w,
                          height: 6.h,
                          margin: EdgeInsets.only(left: 5.w),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Kolay",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 36.w,
                          height: 6.h,
                          margin: EdgeInsets.only(left: 5.w),
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Orta Derece",
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
                          height: 6.h,
                          margin: EdgeInsets.only(left: 5.w),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Zor",
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
                ),
                SizedBox(
                  height: 2.h,
                ),
                OturmaEgitimi(),
                SizedBox(
                  height: 2.h,
                ),
                TuvaletEgitimi(),
                SizedBox(
                  height: 2.h,
                ),
                KorumalikEgitimi(),
              ],
            ),
          ),
        ));
  }

  Container KorumalikEgitimi() {
    return Container(
      width: 90.w,
      height: 23.h,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Color(0xFF4B4B4B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Korumalık eğitimi",
              style: GoogleFonts.poppins(
                color: Colors.redAccent,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              )),
          Text(
              "Korumalık eğitimi, evcil hayvanınızın evde kalmasını sağlayan eğitimdir.",
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              )),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 90.w,
            height: 6.h,
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Eğitim Süresi: 65dk",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    )),
                Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.white,
                      highlightColor: Colors.grey,
                      child: Text("Başlat",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container TuvaletEgitimi() {
    return Container(
      width: 90.w,
      height: 23.h,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Color(0xFF4B4B4B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tuvalet Eğitimi",
              style: GoogleFonts.poppins(
                color: Colors.deepOrangeAccent,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              )),
          Text(
              "Evcil hayvanınızın tuvalet eğitimi alması için bu eğitimi izleyebilirsiniz.",
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              )),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 90.w,
            height: 6.h,
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Eğitim Süresi: 25dk",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    )),
                Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.white,
                      highlightColor: Colors.grey,
                      child: Text("Başlat",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container OturmaEgitimi() {
    return Container(
      width: 90.w,
      height: 23.h,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Color(0xFF4B4B4B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Oturma Eğitimi",
              style: GoogleFonts.poppins(
                color: Colors.greenAccent,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              )),
          Text(
              "Oturma eğitimi, evcil hayvanınızın size karşı saygılı olmasını sağlar.",
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              )),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 90.w,
            height: 6.h,
            //color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Eğitim Süresi: 5dk",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    )),
                Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.white,
                      highlightColor: Colors.grey,
                      child: Text("Başlat",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
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
              child: Shimmer.fromColors(
            baseColor: Colors.white,
            highlightColor: Colors.purpleAccent,
            child: Text(
              "Evcil Hayvan Eğitimi",
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
