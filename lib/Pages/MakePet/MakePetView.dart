import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pethub/Controllers/Home_controller.dart';
import 'package:pethub/Controllers/make_pet.dart';
import 'package:pethub/Controllers/pets_func_controller.dart';
import 'package:pethub/Models/pet_model.dart';
import 'package:pethub/Pages/Home/CalismaView.dart';
import 'package:pethub/Pages/Home/HomeTapBar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MakePetView extends StatelessWidget {
  MakePetView({super.key});
  MakePetController makePetController = Get.put(MakePetController());
  //HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF161A1D),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF161A1D),
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 2.0.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "pet",
                  style: TextStyle(
                    color: Color(0xFFBA181B),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Uturna',
                  ),
                ),
                Text(
                  "home",
                  style: TextStyle(
                    color: Color(0xFFE5383B),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Uturna',
                  ),
                ),
              ],
            ),
          ),
          leading: InkWell(
            onTap: () {
              if (makePetController.page.value == 0) {
                print("Page Value: ${makePetController.page.value}");
                Get.back();
              } else {
                print("Page Value: ${makePetController.page.value}");
                makePetController.decraseprogress();
                makePetController
                    .animatetoBack(makePetController.page.value - 1);
              }
            },
            child: Container(
              width: 5.w,
              height: 5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 2.0.h, left: 2.0.w),
                child: SvgPicture.asset(
                  'assets/Svgs/backbutton.svg',
                  color: Color(0xFFB1A7A6),
                ),
              ),
            ),
          ),
        ),
        body: Container(
          color: Color(0xFF161A1D),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              GetBuilder<MakePetController>(
                init: MakePetController(),
                builder: (controller) => Container(
                  width: 100.w,
                  height: 1.h,
                  child: FAProgressBar(
                    currentValue: makePetController.progress.value.toDouble(),
                    size: 1.h,
                    backgroundColor: Color(0xFF1E2225),
                    progressColor: Color(0xFFE5383B),
                    maxValue: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Expanded(
                child: Container(
                  width: 100.w,
                  child: PageView(
                    controller: makePetController.controller.value,
                    onPageChanged: (value) {
                      makePetController.onPageChanged(value);
                      print(
                          "Changing Page Value: ${makePetController.page.value}");
                    },
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      pageOne_Name(makePetController: makePetController),
                      pageTwo_tur(makePetController: makePetController),
                      pageThree_Cinsi(makePetController: makePetController),
                      pageFour_Cinsiyeti(makePetController: makePetController),
                      pageFive_Kisir(makePetController: makePetController),
                      pageSix_Yas(makePetController: makePetController),
                      pageSeven_neler(makePetController: makePetController),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class pageSeven_neler extends StatelessWidget {
  const pageSeven_neler({
    super.key,
    required this.makePetController,
  });

  final MakePetController makePetController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
        top: 4.h,
      ),
      //  ! 7. sayfa
      width: 100.w,
      decoration: BoxDecoration(
        color: Color(0xFF1E2225), // güzel renk
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 2.h,
        ),
        child: Column(
          children: [
            GetBuilder(
              init: MakePetController(),
              builder: (controller) => Text(
                "Son olarak bize ${makePetController.petName}'den biraz bahseder misin?",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              width: 90.w,
              height: 9.h,
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFE5383B),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                child: TextField(
                  controller: makePetController.petFavoriteFoodController,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  decoration: InputDecoration(
                    hintText: "En sevdiği yemek",
                    hintStyle: GoogleFonts.roboto(
                      color: Color(0xFFADADAD),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: 90.w,
              height: 9.h,
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFE5383B),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                child: TextField(
                  controller: makePetController.petFavoriteToyController,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  decoration: InputDecoration(
                    hintText: "En sevdiği oyuncak",
                    hintStyle: GoogleFonts.roboto(
                      color: Color(0xFFADADAD),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: 90.w,
              height: 9.h,
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFE5383B),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                child: TextField(
                  controller: makePetController.petFavoriteHowLongController,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  decoration: InputDecoration(
                    hintText: "Ne kadar süredir sizinle ?",
                    hintStyle: GoogleFonts.roboto(
                      color: Color(0xFFADADAD),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: 90.w,
              height: 9.h,
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFE5383B),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                child: TextField(
                  controller: makePetController.petFavoritePlaceController,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w900,
                  ),
                  decoration: InputDecoration(
                    hintText: "Uyumayı en çok sevdiği yer",
                    hintStyle: GoogleFonts.roboto(
                      color: Color(0xFFADADAD),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w900,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Spacer(),
            InkWell(
              onTap: () async {
                if (makePetController
                        .petFavoriteFoodController.text.isNotEmpty &&
                    makePetController
                        .petFavoriteToyController.text.isNotEmpty &&
                    makePetController
                        .petFavoriteHowLongController.text.isNotEmpty &&
                    makePetController
                        .petFavoritePlaceController.text.isNotEmpty) {
                  makePetController.petFavoriteFood =
                      makePetController.petFavoriteFoodController.text;
                  makePetController.petFavoriteToy =
                      makePetController.petFavoriteToyController.text;
                  makePetController.petHowLong =
                      makePetController.petFavoriteHowLongController.text;
                  makePetController.petFavoritePlace =
                      makePetController.petFavoritePlaceController.text;

                  makePetController.createNameforPet();
                  PetFuncController petFuncController = Get.put(PetFuncController());
                  petFuncController.showHomeView();
                  Get.to(() => HomeTapBar());

                  // TODO: Buraya
                } else {
                  Get.snackbar("Hata", "Lütfen boş alan bırakmayınız",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.red,
                      colorText: Colors.white);
                }
              },
              child: Container(
                width: 80.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Color(0xFFE5383B),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Bitti",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class pageSix_Yas extends StatelessWidget {
  const pageSix_Yas({
    super.key,
    required this.makePetController,
  });

  final MakePetController makePetController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
        top: 4.h,
      ),
      //  ! 6. sayfa
      width: 100.w,
      decoration: BoxDecoration(
        color: Color(0xFF1E2225), // güzel renk
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 2.h,
        ),
        child: Column(
          children: [
            GetBuilder(
              init: MakePetController(),
              builder: (controller) => Text(
                "${makePetController.petName} kaç yaşında ?",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 80.w,
              height: 13.h,
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Yıl",
                      style: GoogleFonts.roboto(
                        color: Color(0xFFB1A7A6),
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w900,
                      )),
                  Obx(
                    () => Text(makePetController.numbersYil.value.toString(),
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      makePetController.increaseYil();
                    },
                    child: Container(
                      width: 14.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SvgPicture.asset(
                        'assets/Svgs/yukaributon.svg',
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 80.w,
              height: 13.h,
              decoration: BoxDecoration(
                color: Color(0xFF161A1D),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Ay",
                      style: GoogleFonts.roboto(
                        color: Color(0xFFB1A7A6),
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w900,
                      )),
                  Obx(
                    () => Text(makePetController.numbersAy.value.toString(),
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w900,
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      makePetController.increaseAy();
                    },
                    child: Container(
                      width: 14.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SvgPicture.asset(
                        'assets/Svgs/yukaributon.svg',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            InkWell(
                onTap: () {
                  if (makePetController.numbersAy.value != 0 &&
                      makePetController.numbersYil.value != 0) {
                    makePetController.updateprogress();

                    makePetController
                        .animateTo(makePetController.page.value + 1);
                  } else {
                    Get.snackbar("Hata", "Lütfen yıl ve ay seçin",
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.red,
                        colorText: Colors.white);
                  }
                },
                child: GetBuilder<MakePetController>(
                    init: MakePetController(),
                    builder: (controller) {
                      return Container(
                        width: 80.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: makePetController.numbersAy.value != 0 &&
                                  makePetController.numbersYil.value != 0
                              ? Color(0xFFE5383B)
                              : Color(0xFFADADAD),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Devam Et",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class pageFive_Kisir extends StatelessWidget {
  const pageFive_Kisir({
    super.key,
    required this.makePetController,
  });

  final MakePetController makePetController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
        top: 4.h,
      ),
      //  ! 5. sayfa
      width: 100.w,
      decoration: BoxDecoration(
        color: Color(0xFF1E2225), // güzel renk
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 2.h,
        ),
        child: Column(
          children: [
            GetBuilder(
              init: MakePetController(),
              builder: (controller) => Text(
                "${makePetController.petName} kısır mı ?",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
                onTap: () {
                  makePetController.isSelectedKisirr();
                },
                child: GetBuilder(
                  init: MakePetController(),
                  builder: (controller) => Container(
                    width: 50.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: makePetController.isSelectedKisir == true
                            ? Color(0xFFE5383B)
                            : Color(0xFFADADAD),
                        width: 6,
                      ),
                      color: Color(0xFF161A1D),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(
                      "Evet",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                  ),
                )),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
                onTap: () {
                  makePetController.isSelectedKisirDegill();
                },
                child: GetBuilder(
                  init: MakePetController(),
                  builder: (controller) => Container(
                    width: 50.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: makePetController.isSelectedKisirDegil == true
                            ? Color(0xFFE5383B)
                            : Color(0xFFADADAD),
                        width: 6,
                      ),
                      color: Color(0xFF161A1D),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(
                      "Hayır",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                  ),
                )),
            Spacer(),
            InkWell(
                onTap: () {
                  if (makePetController.isSelectedKisir.value == true ||
                      makePetController.isSelectedKisirDegil.value == true) {
                    makePetController.updateprogress();
                    print("Page Value: ${makePetController.petType}");
                    makePetController
                        .animateTo(makePetController.page.value + 1);
                  } else {
                    Get.snackbar("Hata", "Lütfen bir türü seçin.",
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.red,
                        colorText: Colors.white);
                  }
                },
                child: GetBuilder<MakePetController>(
                    init: MakePetController(),
                    builder: (controller) {
                      return Container(
                        width: 80.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color:
                              makePetController.isSelectedKisir.value == true ||
                                      makePetController
                                              .isSelectedKisirDegil.value ==
                                          true
                                  ? Color(0xFFE5383B)
                                  : Color(0xFFADADAD),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Devam Et",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class pageFour_Cinsiyeti extends StatelessWidget {
  const pageFour_Cinsiyeti({
    super.key,
    required this.makePetController,
  });

  final MakePetController makePetController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
        top: 4.h,
      ),
      //  ! 4. sayfa
      width: 100.w,
      decoration: BoxDecoration(
        color: Color(0xFF1E2225), // güzel renk
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 2.h,
        ),
        child: Column(
          children: [
            GetBuilder(
              init: MakePetController(),
              builder: (controller) => Text(
                "${makePetController.petCins}'nin cinsiyeti nedir?",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
                onTap: () {
                  makePetController.isSelectedMale();
                },
                child: GetBuilder(
                  init: MakePetController(),
                  builder: (controller) => Container(
                    width: 50.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: makePetController.isSelectedErkek.value == true
                            ? Color(0xFFE5383B)
                            : Color(0xFFADADAD),
                        width: 6,
                      ),
                      color: Color(0xFF161A1D),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: SvgPicture.asset(
                      "assets/Svgs/male.svg",
                      width: 15.w,
                      height: 15.h,
                    )),
                  ),
                )),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
                onTap: () {
                  makePetController.isSelectedFemale();
                },
                child: GetBuilder(
                  init: MakePetController(),
                  builder: (controller) => Container(
                    width: 50.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: makePetController.isSelectedKadin.value == true
                            ? Color(0xFFE5383B)
                            : Color(0xFFADADAD),
                        width: 6,
                      ),
                      color: Color(0xFF161A1D),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: SvgPicture.asset(
                      "assets/Svgs/female.svg",
                      width: 15.w,
                      height: 15.h,
                    )),
                  ),
                )),
            Spacer(),
            InkWell(
                onTap: () {
                  if (makePetController.isSelectedErkek.value == true ||
                      makePetController.isSelectedKadin.value == true) {
                    makePetController.updateprogress();

                    makePetController
                        .animateTo(makePetController.page.value + 1);
                  } else {
                    Get.snackbar("Hata", "Lütfen bir cinsiyet seçin.",
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.red,
                        colorText: Colors.white);
                  }
                },
                child: GetBuilder<MakePetController>(
                    init: MakePetController(),
                    builder: (controller) {
                      return Container(
                        width: 80.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color:
                              makePetController.isSelectedErkek.value == true ||
                                      makePetController.isSelectedKadin.value ==
                                          true
                                  ? Color(0xFFE5383B)
                                  : Color(0xFFADADAD),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Devam Et",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class pageThree_Cinsi extends StatelessWidget {
  const pageThree_Cinsi({
    super.key,
    required this.makePetController,
  });

  final MakePetController makePetController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
        top: 4.h,
      ),
      //  ! 3. sayfa
      width: 100.w,
      decoration: BoxDecoration(
        color: Color(0xFF1E2225), // güzel renk
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 2.h,
        ),
        child: Column(
          children: [
            GetBuilder(
              init: MakePetController(),
              builder: (controller) => Text(
                "${makePetController.petName}'nin cinsi nedir?",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 4.w,
                  right: 4.w,
                ),
                child: Container(
                  width: 100.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    //color: Color(0xFF161A1D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView.builder(
                    itemCount: 60,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 2.w,
                          right: 2.w,
                          bottom: 2.h,
                        ),
                        child: InkWell(
                          onTap: () {
                            if (makePetController.petType == "Kedi") {
                              makePetController.selectedCins(
                                  makePetController.KediCinsleri[index]);
                            } else {
                              makePetController.selectedCinsKopek(
                                  makePetController.kopekCinsleri[index]);
                            }
                            print(makePetController.selectedIndex);

                            if (makePetController.selectedIndex == index) {
                              // seçili butona tekrar tıklandığında seçimi iptal et
                              makePetController.selectedIndex = -1;
                            } else {
                              // yeni bir buton seçildiğinde önceki seçimin rengini değiştir
                              if (makePetController.selectedIndex != -1) {
                                // önceki seçilen butonun rengini varsayılana çevir
                                makePetController.selectedIndex = -1;
                              }
                              // yeni seçilen butonun rengini değiştir
                              makePetController.selectedIndex = index;
                            }
                            //print(makePetController.KediCinsleri[index]);

                            /* 
                            makePetController.updateprogress();
                            makePetController
                                .animateTo(makePetController.page.value + 1); */
                          },
                          child: GetBuilder<MakePetController>(
                            init: MakePetController(),
                            builder: (controller) {
                              return Container(
                                width: 90.w,
                                height: 12.h,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: makePetController
                                                    .selectedIndex ==
                                                index
                                            ? Colors.red
                                            : Colors.white.withOpacity(0.25),
                                        blurRadius: 0,
                                        spreadRadius: 1,
                                        offset: Offset(-3, 4))
                                  ],
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFF161A1D),
                                        Color(0xFF242729),
                                      ]),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Text(
                                    makePetController.isSelectedKopek == false
                                        ? makePetController.KediCinsleri[index]
                                        : makePetController
                                            .kopekCinsleri[index],
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                )),
            Spacer(),
            InkWell(
                onTap: () {
                  if (makePetController.selectedIndex != -1) {
                    makePetController.updateprogress();
                    makePetController
                        .animateTo(makePetController.page.value + 1);
                  }
                  /* if (makePetController.petCinsController.text.isNotEmpty) {
                    FocusScope.of(context).unfocus();
                    makePetController
                        .animateTo(makePetController.page.value + 1);
                  } */
                },
                child: GetBuilder<MakePetController>(
                    init: MakePetController(),
                    builder: (controller) {
                      return Container(
                        width: 80.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: makePetController.selectedIndex != -1
                              ? Color(0xFFE5383B)
                              : Color(0xFFADADAD),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Devam Et",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

class pageOne_Name extends StatelessWidget {
  const pageOne_Name({
    super.key,
    required this.makePetController,
  });

  final MakePetController makePetController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
        top: 4.h,
      ),
      // ! 1. sayfa
      width: 100.w,
      decoration: BoxDecoration(
        color: Color(0xFF1E2225), // güzel renk
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Evcil hayvanınızın ismini giriniz",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Ona nasıl sesleniyosunuz?",
                style: GoogleFonts.roboto(
                  color: Color(0xFFADADAD),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.w,
              right: 4.w,
            ),
            child: TextField(
              autofocus: true,
              onChanged: (value) {
                makePetController.onTextFieldChangedName(value);
              },
              controller: makePetController.petNameController,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w900,
              ),
              decoration: InputDecoration(
                hintText: "Örnek: Şeker",
                hintStyle: GoogleFonts.roboto(
                  color: Color(0xFFADADAD),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              bottom: 2.h,
            ),
            child: InkWell(
                onTap: () {
                  if (makePetController.petNameController.text.isNotEmpty) {
                    FocusScope.of(context).unfocus();
                    makePetController
                        .animateTo(makePetController.page.value + 1);
                  }
                },
                child: GetBuilder<MakePetController>(
                    init: MakePetController(),
                    builder: (controller) {
                      return Container(
                        width: 80.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: makePetController
                                  .petNameController.text.isNotEmpty
                              ? Color(0xFFE5383B)
                              : Color(0xFFADADAD),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Devam Et",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}

class pageTwo_tur extends StatelessWidget {
  const pageTwo_tur({
    super.key,
    required this.makePetController,
  });

  final MakePetController makePetController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
        top: 4.h,
      ),
      //  ! 2. sayfa
      width: 100.w,
      decoration: BoxDecoration(
        color: Color(0xFF1E2225), // güzel renk
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 2.h,
        ),
        child: Column(
          children: [
            GetBuilder(
              init: MakePetController(),
              builder: (controller) => Text(
                "${makePetController.petName}'nin türü nedir?",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
              onTap: () {
                makePetController.isSelectedCat();
              },
              child: Stack(
                children: [
                  GetBuilder<MakePetController>(
                    init: MakePetController(),
                    builder: (controller) => Container(
                      width: 62.w,
                      height: 28.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: makePetController.isSelectedKedi.value == true
                              ? Colors.red
                              : Color(0xFFADADAD),
                          width: 6,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/Backgrounds/kedibutonback.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 62.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              onTap: () {
                makePetController.isSelectedDog();
              },
              child: Stack(
                children: [
                  GetBuilder<MakePetController>(
                    init: MakePetController(),
                    builder: (controller) => Container(
                      width: 62.w,
                      height: 28.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: makePetController.isSelectedKopek.value == true
                              ? Colors.red
                              : Color(0xFFADADAD),
                          width: 6,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/Backgrounds/kopekbutonback.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 62.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            InkWell(
                onTap: () {
                  if (makePetController.isSelectedKedi.value == true ||
                      makePetController.isSelectedKopek.value == true) {
                    makePetController.updateprogress();
                    print("Page Value: ${makePetController.petType}");
                    makePetController
                        .animateTo(makePetController.page.value + 1);
                  } else {
                    Get.snackbar("Hata", "Lütfen bir türü seçin.",
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.red,
                        colorText: Colors.white);
                  }
                },
                child: GetBuilder<MakePetController>(
                    init: MakePetController(),
                    builder: (controller) {
                      return Container(
                        width: 80.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color:
                              makePetController.isSelectedKedi.value == true ||
                                      makePetController.isSelectedKopek.value ==
                                          true
                                  ? Color(0xFFE5383B)
                                  : Color(0xFFADADAD),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Devam Et",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
