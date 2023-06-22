import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/message/controller.dart';

class ChatDetailsPage extends GetView<ChatDetailsController> {
  const ChatDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            InkWell(
              onTap: () {},
              child: const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/whatsapp.png"),
                ),
                title: Text("UserName"),
                subtitle: Row(
                  children: [
                    // Icon(
                    //   index % 2 == 0 ? Icons.done : Icons.done_all,
                    //   color: index % 2 == 0 ? Colors.grey : Colors.blue,
                    // )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
