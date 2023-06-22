import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:whatsapp_clone/common/theme/theme_controller.dart';
import 'package:whatsapp_clone/screens/chat/index.dart';
import '../status/index.dart';
import 'index.dart';

class DashboardScreen extends GetView<DashboardController> {
  DashboardScreen({super.key});

  final themeController = Get.put(ThemeController());
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
  Widget build(BuildContext context) {
    StatusController insert = Get.put(StatusController());
    ChatListController chat = Get.put(ChatListController());

    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          "Whatsapp",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_sharp,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
          GetBuilder<ThemeController>(builder: (controller) {
            return IconButton(
              onPressed: () {
                return controller.toggleDarkMode();
              },
              icon: Icon(
                themeController.isDarkMode
                    ? Icons.dark_mode_sharp
                    : Icons.sunny,
              ),
            );
          }),
        ],
        bottom: TabBar(
          //unselectedLabelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3,
          indicatorColor: Colors.green,

          controller: controller.controller,
          tabs: dashTab,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
        onPressed: () {
          // chat.insertData(
          //   chatxist: ChatList(
          //     // id: 0,
          //     message: "Guy",
          //     time: "11:30pm",
          //     username: "Henry",
          //   ),
          // );
          // insert.insertStatus(
          //   status: Status(
          //       name: "Mark Henry",
          //       date: "6-June-2023",
          //       image:
          //           "https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_960_720.jpg"),
          // );
        },
      ),
      body: SizedBox(
        width: 360.w,
        height: 780.h,
        child: TabBarView(controller: controller.controller, children: const [
          Icon(Icons.camera_alt),
          ChatPage(),
          StatusScreen(),
          Text("CALLS"),
        ]),
      ),
    );
  }
}
