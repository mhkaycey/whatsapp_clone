import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/Onboarding/index.dart';

import 'widgets/onboard.dart';

class OnboardingScreen extends GetView<OnBoardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.1),
      body: SizedBox(
        width: 360.w,
        height: 780.h,
        child: OnboardBuild(
          mainTitle: controller.mainTitle,
        ),
      ),
    );
  }
}
