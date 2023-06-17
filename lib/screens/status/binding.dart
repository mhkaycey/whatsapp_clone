import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/status/index.dart';

class StatusBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatusController>(
      () => StatusController(),
    );
  }
}
