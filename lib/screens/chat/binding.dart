import 'package:get/get.dart';

import 'index.dart';

class ChatListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatListController>(
      () => ChatListController(),
    );
  }
}
