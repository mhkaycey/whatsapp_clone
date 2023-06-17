import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/Onboarding/index.dart';

class OnboardingScreen extends GetView<OnBoardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      body: SizedBox(
          width: 360.w,
          height: 780.h,
          child: _buildOnboard(controller.mainTitle)),
    );
  }

  _buildOnboard(String mainTitle) {
    return Container(
      margin: const EdgeInsets.only(top: 100, bottom: 70),
      child: Column(
        children: [
          Text(
            mainTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Montserrat",
              color: Colors.white,
              fontSize: 30.sp,
            ),
          ),
          Container(
            height: 60,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/whatsapp.png"))),
          ),
          const Spacer(),
          Text(
            "Meta",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              //  fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
