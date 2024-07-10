import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_ecommerce/app_route/route.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.offNamed(AppRoute.signInScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SizedBox(
        width: Get.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/splash_icon.png",
                height: 80,
                width: 80,
              ),
              SizedBox(
                height: 10.h,
              ),
              Image.asset(
                "assets/images/splash2_icon.png",
                height: 80,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Venture Together",
                style: TextStyle(
                    fontSize: 23.sp,
                    color: const Color(0xFF3A5DBA),
                    letterSpacing: 2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
