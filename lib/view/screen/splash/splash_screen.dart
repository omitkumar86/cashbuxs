import 'package:cashbuxs/utils/app_color_resources.dart';
import 'package:cashbuxs/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';
  SplashScreen({super.key});

  final splashScreenController = Get.find<SplashScreenController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorResources.primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/app_logo.png',
                height: 230.h,
                width: 230.w,
              ),
              Text(
                "Cashbuxs",
                style: myStyleRuda(
                    25.sp, AppColorResources.appNameTextColor, FontWeight.w400),
              ),
              SizedBox(
                height: 30.h,
              ),
              Lottie.asset(
                'assets/lottie/loading.json',
                height: 200.h,
                width: 200.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
