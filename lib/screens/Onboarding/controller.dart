import 'package:get/get.dart';
import 'package:whatsapp_clone/common/routes/routes.dart';

class OnBoardingController extends GetxController {
  OnBoardingController();
  final mainTitle = "Whatsapp";

  @override
  void onReady() {
    Future.delayed(
        const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.dashborad));
    super.onReady();
  }
}
