import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pethub/Controllers/BeslenmeController.dart';
import 'package:pethub/Controllers/Home_controller.dart';
import 'package:pethub/Controllers/pets_func_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

class BeslenmeView extends StatelessWidget {
  BeslenmeView({super.key});
  PetFuncController petFuncController = Get.put(PetFuncController());
  BeslenmeController Beslenmecontroller = Get.put(BeslenmeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
      body: Container(
        width: 100.w,
        height: 210.h,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              AppBar(),
              //BodyOne(),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: 100.w,
                height: 210.h,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: -30,
                      child: SvgPicture.asset(
                        "assets/Svgs/HayvanBeslenmeIcon.svg",
                        width: 70.w,
                        height: 70.h,
                        fit: BoxFit.cover,
                        color: Color(0xFF353535).withOpacity(0.6),
                      ),
                    ),
                    Column(
                      children: [
                        CigerHaslama(),
                        Container(
                          width: 100.w,
                          height: 7.h,
                          child: Row(
                            children: [
                              Container(
                                width: 30.w,
                                height: 7.h,
                                margin: EdgeInsets.only(left: 5.w),
                                decoration: BoxDecoration(
                                  //color: Color(0xFFE3354E),
                                  // color: Color.fromARGB(255, 49, 49, 49),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Kategoriler",
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
                        Container(
                          width: 90.w,
                          height: 13.h,
                          color: Colors.greenAccent.withOpacity(0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Beslenmecontroller.changeColor();
                                  },
                                  child: GetBuilder<BeslenmeController>(
                                    init: Beslenmecontroller,
                                    builder: (controller) {
                                      return Column(
                                        children: [
                                          Container(
                                            width: 20.w,
                                            height: 10.h,
                                            decoration: BoxDecoration(
                                              color: Beslenmecontroller.isTapped
                                                  ? Colors.redAccent
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                          Container(
                                            width: 15.w,
                                            height: 3.h,
                                            //color: Colors.red,
                                            child: Center(
                                              child: Text(
                                                "Tarifler",
                                                style: GoogleFonts.poppins(
                                                  color: Beslenmecontroller
                                                          .isTapped
                                                      ? Colors.redAccent
                                                      : Colors.white,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  )),
                              InkWell(
                                  onTap: () {
                                    Beslenmecontroller.changeColor1();
                                  },
                                  child: GetBuilder<BeslenmeController>(
                                    init: Beslenmecontroller,
                                    builder: (controller) {
                                      return Column(
                                        children: [
                                          Container(
                                            width: 20.w,
                                            height: 10.h,
                                            decoration: BoxDecoration(
                                              color:
                                                  Beslenmecontroller.isTapped1
                                                      ? Colors.redAccent
                                                      : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                          Container(
                                            width: 20.w,
                                            height: 3.h,
                                            //color: Colors.red,
                                            child: Center(
                                              child: Text(
                                                "Kaynaklar",
                                                style: GoogleFonts.poppins(
                                                  color: Beslenmecontroller
                                                          .isTapped1
                                                      ? Colors.redAccent
                                                      : Colors.white,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  )),
                              InkWell(
                                  onTap: () {
                                    Beslenmecontroller.changeColor2();
                                  },
                                  child: GetBuilder<BeslenmeController>(
                                    init: Beslenmecontroller,
                                    builder: (controller) {
                                      return Column(
                                        children: [
                                          Container(
                                            width: 20.w,
                                            height: 10.h,
                                            decoration: BoxDecoration(
                                              color:
                                                  Beslenmecontroller.isTapped2
                                                      ? Colors.redAccent
                                                      : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                          Container(
                                            width: 20.w,
                                            height: 3.h,
                                            //color: Colors.red,
                                            child: Center(
                                              child: Text(
                                                "Hakkında",
                                                style: GoogleFonts.poppins(
                                                  color: Beslenmecontroller
                                                          .isTapped2
                                                      ? Colors.redAccent
                                                      : Colors.white,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    },
                                  )),
                              InkWell(
                                  onTap: () {
                                    //
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 20.w,
                                        height: 10.h,
                                        decoration: BoxDecoration(
                                          color: Colors.purpleAccent,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                      Container(
                                        width: 15.w,
                                        height: 3.h,
                                        //color: Colors.red,
                                        child: Center(
                                          child: Text(
                                            "İlaçlar",
                                            style: GoogleFonts.poppins(
                                              color: Colors.purpleAccent,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          width: 90.w,
                          height: 170.h,
                          //color: Colors.green.withOpacity(0.4),
                          child: GetBuilder<BeslenmeController>(
                            init: Beslenmecontroller,
                            builder: (controller) {
                              return Beslenmecontroller.isTapped
                                  ? Column(
                                      children: [
                                        fasulyeliMama(),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        VitaminKombosu(),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Papara(),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        KirmiziyiSeverler(),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        IspanakliMama(),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        BalikliSebzeli(),
                                      ],
                                    )
                                  : Beslenmecontroller.isTapped1
                                      ? Kaynaklar()
                                      : Beslenmecontroller.isTapped2
                                          ? Column(
                                              children: [
                                                Container(
                                                  width: 90.w,
                                                  height: 16.h,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 49, 49, 49),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(2.w),
                                                      child: Text(
                                                        "Scottish Fold kedileri, genellikle sağlıklı bir diyetle beslendikleri sürece oldukça sağlıklı ve mutlu evcil hayvanlar olabilirler. Ancak, bu kediler bazı özel yeme alışkanlıklarına sahip olabilirler.",
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Container(
                                                  width: 90.w,
                                                  height: 19.h,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 49, 49, 49),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(2.w),
                                                      child: Text(
                                                        "Scottish Fold kedileri, çoğu kedi gibi etobur hayvanlardır ve yüksek kaliteli protein kaynaklarına ihtiyaç duyarlar. Kuru mama, konserve mama veya ev yapımı yiyeceklerle beslenebilirler. Ancak, yüksek kaliteli kedi maması tercih edilmesi önerilir.",
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Container(
                                                  width: 90.w,
                                                  height: 21.h,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 49, 49, 49),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(2.w),
                                                      child: Text(
                                                        "Scottish Fold kedileri, sık sık yemek yemeyi tercih edebilirler ve bazıları beslenme konusunda seçici olabilir. Bu nedenle, kedi sahipleri, Scottish Fold kedilerinin beslenme ihtiyaçlarını karşılamak için sağlıklı bir diyet planı oluşturmalı ve mümkün olduğunca düzenli yemek saatleri belirlemelidirler.",
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Container(
                                                  width: 90.w,
                                                  height: 21.h,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 49, 49, 49),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(2.w),
                                                      child: Text(
                                                        "Scottish Fold kedilerinin yeme alışkanlıklarından bir diğeri, su tüketimlerinin düşük olabilmesidir. Bu nedenle, kedi sahipleri, Scottish Fold kedilerine yeterli miktarda su sağlamak için birkaç su kabı veya bir su fıskiyesi kullanmayı düşünebilirler.",
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Container(
                                                  width: 90.w,
                                                  height: 27.h,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 49, 49, 49),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(2.w),
                                                      child: Text(
                                                        "Sonuç olarak, Scottish Fold kedileri etobur hayvanlar olduğu için yüksek kaliteli protein kaynaklarına ihtiyaç duyarlar. Bazıları beslenme konusunda seçici olabilir ve su tüketimleri düşük olabilir. Scottish Fold kedisi sahipleri, sağlıklı bir diyet planı oluşturmak, düzenli yemek saatleri belirlemek ve yeterli su tüketimini sağlamak için çaba göstermelidirler.",
                                                        style:
                                                            GoogleFonts.poppins(
                                                          color: Colors.white,
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          : Container();
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column Kaynaklar() {
    return Column(
      children: [
        Container(
          width: 90.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 49, 49, 49),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "Protein Kaynakları",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Proteinler(),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 90.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 49, 49, 49),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "Karbonhidrat Kaynakları",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Karbonidatlar(),
        Karbonidatlariki(),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 90.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 49, 49, 49),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "Lipit Kaynakları",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        LipitKaynaklari(),
        LipitKaynaklariiki(),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 90.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 49, 49, 49),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "Mineral Kaynakları",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        MineralKaynaklari(),
        MinealKaynaklariiki(),
        SizedBox(
          height: 2.h,
        ),
        Container(
          width: 90.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 49, 49, 49),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              "Vitamin Kaynakları",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        VitaminKaynaklari(),
        VitaminKaynaklariiki(),
      ],
    );
  }

  Container VitaminKaynaklariiki() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Sebzeler",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Narenciye",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Orman meyveleri",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container VitaminKaynaklari() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Et",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Balık yağı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Süt ürünleri",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Tahıllar",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container MineralKaynaklari() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Kuzu eti",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Ciğer eti",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Avokado",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Balık",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container MinealKaynaklariiki() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Buğday",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Tahıllar",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Bezelye",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Mercimek",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container LipitKaynaklariiki() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Tereyağı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Don yağı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Balık yağı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Yumurtalar",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container LipitKaynaklari() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Soya yağı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Mısır Yağı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Hodan yağı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Aspir yağı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container Karbonidatlariki() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Süt",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container Karbonidatlar() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Pirinç",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Mısır",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Buğday",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Arpa",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Patates",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container Proteinler() {
    return Container(
      width: 90.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Et",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Tahıl",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Tohumlar",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Bakliyat",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            children: [
              Container(
                width: 15.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Sebzeler",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Stack BalikliSebzeli() {
    return Stack(
      children: [
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.yemek.com/uploads/2014/10/10-balik.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 26, 23, 23).withOpacity(0.8),
                Color(0xFF353535).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 15.h,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: SvgPicture.asset(
                    "assets/Svgs/KediSayacIcon.svg",
                    color: Colors.redAccent,
                  ),
                )),
              ),
              Container(
                width: 45.w,
                height: 15.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "En sevdikleri şey olabilir",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Balıklı ve sebzeli mama",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                height: 15.h,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.redAccent,
                    size: 25.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Stack IspanakliMama() {
    return Stack(
      children: [
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.yemek.com/uploads/2016/01/ispanakli-etli-kopek-mamasi.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 26, 23, 23).withOpacity(0.8),
                Color(0xFF353535).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 15.h,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: SvgPicture.asset(
                    "assets/Svgs/KopekSayacIcon.svg",
                    color: Colors.red,
                  ),
                )),
              ),
              Container(
                width: 45.w,
                height: 15.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Yanına az yağlı yoğurt da olur",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Kıymalı ve ıspanaklı mama",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                height: 15.h,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.redAccent,
                    size: 25.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Stack KirmiziyiSeverler() {
    return Stack(
      children: [
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.yemek.com/uploads/2015/04/brokoli.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 26, 23, 23).withOpacity(0.8),
                Color(0xFF353535).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 15.h,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: SvgPicture.asset(
                    "assets/Svgs/KediSayacIcon.svg",
                    color: Colors.redAccent,
                  ),
                )),
              ),
              Container(
                width: 45.w,
                height: 15.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Kırmızıyı severler",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Dana etli ve brokolili mama",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                height: 15.h,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.redAccent,
                    size: 25.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Stack Papara() {
    return Stack(
      children: [
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.yemek.com/uploads/2016/01/papara-tarif.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 26, 23, 23).withOpacity(0.8),
                Color(0xFF353535).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 15.h,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: SvgPicture.asset(
                    "assets/Svgs/KopekSayacIcon.svg",
                    color: Colors.red,
                  ),
                )),
              ),
              Container(
                width: 45.w,
                height: 15.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bayat ekmekleri değerlendirmenin En güzel yolu",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Papara",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                height: 15.h,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.redAccent,
                    size: 25.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Stack VitaminKombosu() {
    return Stack(
      children: [
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.yemek.com/uploads/2015/12/sebzeler.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 26, 23, 23).withOpacity(0.8),
                Color(0xFF353535).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 15.h,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: SvgPicture.asset(
                    "assets/Svgs/KopekSayacIcon.svg",
                    color: Colors.red,
                  ),
                )),
              ),
              Container(
                width: 45.w,
                height: 15.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tam bir vitamin kombosu",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Karışık sebzeli ve etli mama",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                height: 15.h,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.redAccent,
                    size: 25.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Stack fasulyeliMama() {
    return Stack(
      children: [
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.yemek.com/uploads/2016/12/tavuk-suyu-corba-tarifi-yeni.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 26, 23, 23).withOpacity(0.8),
                Color(0xFF353535).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 15.h,
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(2.w),
                  child: SvgPicture.asset(
                    "assets/Svgs/KediSayacIcon.svg",
                    color: Colors.redAccent,
                  ),
                )),
              ),
              Container(
                width: 45.w,
                height: 15.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Biraz değişikliği onlar da sever",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Tavuklu ve yeşil fasulyeli mama",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                height: 15.h,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.redAccent,
                    size: 25.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Stack CigerHaslama() {
    return Stack(
      children: [
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.yemek.com/uploads/2015/02/tavuk-cigeri-tarifi.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          width: 90.w,
          height: 15.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(255, 26, 23, 23).withOpacity(0.8),
                Color(0xFF353535).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 20.w,
                height: 15.h,
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                    size: 30.sp,
                  ),
                ),
              ),
              Container(
                width: 45.w,
                height: 15.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Onu ödüllendirin",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Ciğer haşlama",
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade400,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                height: 15.h,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.redAccent,
                    size: 25.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container BodyOne() {
    return Container(
        // ! zehirli yiyecekler ve sağlıklı ve evde yapılabilen yiyecekler
        width: 100.w,
        height: 87.h,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Container(
                width: 87.w,
                height: 12.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 30, 30),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 25.w,
                      height: 10.h,
                      child: Center(
                        child: Text(
                          "homeController.PetName.value",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            color: Colors.red,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      " için zehirli yiyecekler ve sağlıklı ve \n evde yapılabilen yiyecekler",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 100.w,
              height: 5.h,
              child: Center(
                child: Text(
                  "Sağlıklı yiyecekler",
                  style: GoogleFonts.poppins(
                      color: Colors.greenAccent,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 100.w,
              height: 25.h,
              child: CarouselSlider.builder(
                itemCount: 8,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: 60.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 25.h,
                  viewportFraction: 0.6,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 2100),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 100.w,
              height: 5.h,
              child: Center(
                child: Text(
                  "Zehirli yiyecekler",
                  style: GoogleFonts.poppins(
                      color: Colors.redAccent,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 100.w,
              height: 25.h,
              child: CarouselSlider.builder(
                itemCount: 8,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: 60.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 25.h,
                  viewportFraction: 0.6,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 1100),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            )
          ],
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
              "Beslenme",
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
