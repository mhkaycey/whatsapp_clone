import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/message/index.dart';

class ChatDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatDetailsController>(
      () => ChatDetailsController(),
    );
  }
}
