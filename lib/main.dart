import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pethub/Controllers/authentication_repository.dart';
import 'package:pethub/Pages/Beginning/TrailerView.dart';


import 'package:pethub/firebase_options.dart';
import 'package:provider/provider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthentiocationRepository()));
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
AuthentiocationRepository controller = Get.put(AuthentiocationRepository());
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return 
          GetMaterialApp(
           
            
           
            getPages: [
              GetPage(name: "/trailer", page: () => TrailerView()),
                
            ],
             
                
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: AnimatedSplashScreen(
              splashIconSize: 100.h,
                
              splash: Lottie.asset(
                "assets/animations/maybesplash.json",
                alignment: Alignment.bottomCenter,
              ), 
               
              nextScreen:  TrailerView(), //LoginView(),
                
              pageTransitionType: PageTransitionType.fade,
              animationDuration: Duration(seconds: 1),
              backgroundColor: Colors.black,
              duration: 2000,
            ),
          
        );
      },
    );
  }
}
