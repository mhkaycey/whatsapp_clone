import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/common/model/chatlist.dart';
import 'package:whatsapp_clone/common/theme/theme_controller.dart';
import 'package:whatsapp_clone/screens/chat/controller.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final chatX = Get.put(ChatListController());
  final theme = Get.put(ThemeController());

  @override
  void initState() {
    chatX.getChatList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        itemCount: chatX.chatList.length,
        itemBuilder: (_, int index) {
          ChatList chx = chatX.chatList[index];
          return Column(
            children: [
              InkWell(
                onTap: () {
                  if (kDebugMode) {
                    print(chx.username);
                  }
                },
                child: ListTile(
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/whatsapp.png"),
                  ),
                  title: Text(chx.username.toString()),
                  subtitle: Row(
                    children: [
                      Icon(
                        index % 3 == 0 ? Icons.done : Icons.done_all,
                        color: index % 2 == 0 ? Colors.grey : Colors.blue,
                      ),
                      const Padding(padding: EdgeInsets.only(right: 2)),
                      Text(
                        chx.message.toString(),
                        style: const TextStyle(),
                      )
                    ],
                  ),
                  trailing: Text(
                    chx.time.toString(),
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              )
            ],
          );
        },
      );
    });
  }
}
