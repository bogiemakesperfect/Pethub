import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pethub/Controllers/login_controller.dart';
import 'package:pethub/Pages/LoginHome/RegisterView.dart';

import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginHomeView extends StatelessWidget {
  const LoginHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
        backgroundColor: Color(0xFF161A1D),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(180 / 360),
                    child: SvgPicture.asset(
                      "assets/Svgs/normalbakankedi.svg",
                      width: 100.w,
                      height: 35.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0.h,
                    child: Text("safe care with",
                        style: TextStyle(
                            fontFamily: "Uturna",
                            color: Color(0xFF6C6C6C),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                ],
              ),
              Container(
                width: 100.w,
                height: 10.h,
                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "pet",
                        style: TextStyle(
                          color: Color(0xFFBA181B),
                          fontSize: 40.sp,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Uturna',
                        ),
                      ),
                      Text(
                        "home",
                        style: TextStyle(
                          color: Color(0xFFE5383B),
                          fontSize: 40.sp,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Uturna',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              // ! textfield area
              Container(
                width: 85.w,
                height: 25.h,
                //color: Colors.green.withOpacity(0.4),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        controller: controller.email,
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
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
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
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
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Şifremi unuttum",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => RegisterView());
                            },
                            child: Text(
                              "Bir hesabın yok mu?",
                              style: TextStyle(
                                color: Color(0xFFE5383B),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    LoginController.instance.LoginUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
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
                      "Giriş yap",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                width: 100.w,
                height: 7.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 35.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF833AB4),
                            Color(0xFFC13584),
                            Color(0xFFE1306C),
                            Color(0xFFFD1D1D),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Icons/instagramlogo.png",
                            width: 10.w,
                            fit: BoxFit.scaleDown,
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 1.h,
                            ),
                            child: Text("Instagram",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Vegan")),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 35.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Icons/googlelogo.png",
                            width: 10.w,
                            fit: BoxFit.scaleDown,
                            height: 10.h,
                          ),
                          Text("Google",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF6C6C6C),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Literata")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                  "By registering you’ll be agreeing to terms & conditions and Privacy poicy of the company",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: Color(0xFF6C6C6C),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  )),
              Text("© 2021 Pet Home. All rights reserved.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: Color(0xFF6C6C6C),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ))
            ],
          ),
        ));
  }
}
