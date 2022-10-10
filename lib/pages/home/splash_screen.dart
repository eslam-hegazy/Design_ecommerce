import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:tasks/pages/home/main_screen.dart';
import 'package:tasks/pages/home/shop_screen.dart';
import 'package:tasks/utils/app_color.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return MainScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite,
      body: Column(
        children: [
          Lottie.asset('assets/images/splash_screen.json'),
          Text(
            "The Best Food",
            style: GoogleFonts.akronim(
              letterSpacing: 2,
              fontSize: 25.sp,
              color: AppColor.kMain,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
