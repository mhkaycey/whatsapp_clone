import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/dashboard/index.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
