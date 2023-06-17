import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:whatsapp_clone/common/theme/theme_controller.dart';

class DashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  DashboardController();
  ThemeController theme = Get.put(ThemeController());
  late TabController controller;

  final List<Tab> dashTab = <Tab>[
    const Tab(
      child: Icon(IconlyBold.user_3),
    ),
    const Tab(
      // text: "Chat",
      child: Text(
        "CHATS",
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    const Tab(
      text: "STATUS",
    ),
    const Tab(
      text: "CALLS",
    )
  ];

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
