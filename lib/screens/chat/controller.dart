import 'package:get/get.dart';
import 'package:whatsapp_clone/common/database/db_helper.dart';
import 'package:whatsapp_clone/common/model/chatlist.dart';

class ChatListController extends GetxController {
  ChatListController();
  RxList chatListX = <ChatList>[].obs;
  final dbHelper = DBHelper();
  RxList get chatList => chatListX;

  @override
  onInit() {
    super.onInit();
    getChatList();
    //insertData();
  }

  Future<void> getChatList() async {
    final List<Map<String, dynamic>> chatListData =
        await dbHelper.getChatList();
    chatList.assignAll(
      chatListData.map((data) => ChatList.fromJson(data)).toList(),
    );
  }

  Future<int> insertData({ChatList? chatxist}) async {
    return await dbHelper.insertChatList(chatxist);
  }
}
