import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Controllers/signup_controller.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Color(0xFF161A1D),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 5.h),
              width: 90.w,
              height: 65.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kayıt ol",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    "Evcil hayvanlarınız için en iyi bakım, tek dokunuşla.",
                    style: GoogleFonts.roboto(
                      color: Color(0xFFADADAD),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 4.h,
                        ),
                        TextFormField(
                          controller: controller.email,
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "E-mail",
                            hintStyle: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextFormField(
                          controller: controller.password,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Şifre",
                            hintStyle: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextFormField(
                          controller: controller.username,
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.sp),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Kullanıcı adı",
                            hintStyle: TextStyle(
                              color: Color(0xFF6C6C6C),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Zaten bir hesabın var mı?",
                              style: GoogleFonts.roboto(
                                color: Color(0xFF6C6C6C),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text(
                                "Giriş yap",
                                style: GoogleFonts.roboto(
                                  color: Color(0xFFE5383B),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate() &&
                                controller.email.text.isNotEmpty &&
                                controller.password.text.isNotEmpty &&
                                controller.username.text.isNotEmpty) {
                              SignUpController.instance.registerUser(
                                controller.email.text.trim(),
                                controller.password.text.trim(),
                                controller.username.text.trim(),
                              );
                            }
                          },
                          child: Container(
                            width: 65.w,
                            height: 8.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFE5383B),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Kayıt ol",
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
                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SvgPicture.asset(
                  "assets/Svgs/yukaribakankedi.svg",
                  width: 100.w,
                  height: 35.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10.h,
                  child: Container(
                    width: 100.w,
                    height: 20.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "pet",
                          style: TextStyle(
                            color: Color(0xFFBA181B),
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Uturna',
                          ),
                        ),
                        Text(
                          "home",
                          style: TextStyle(
                            color: Color(0xFFE5383B),
                            fontSize: 28.sp,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Uturna',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.h,
                  child: Text(
                      "By registering you’ll be agreeing to\n terms & conditions and Privacy poicy of the company",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Color(0xFF6C6C6C),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
