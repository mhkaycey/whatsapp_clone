import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/Onboarding/index.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
  }
}
