import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/common/theme/theme_controller.dart';

class DashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  DashboardController();
  ThemeController theme = Get.put(ThemeController());
  late TabController controller;

  @override
  void onInit() {
    controller = TabController(length: 4, vsync: this, initialIndex: 1);
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
