import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:whatsapp_clone/screens/chat/controller.dart';
import 'package:whatsapp_clone/screens/status/controller.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  late ChatListController chatListController;
  late StatusController statusController;
  setUp(() async {
    chatListController = ChatListController();
    statusController = StatusController();
    // final String path = await getDatabasesPath();
    // final dbPath = join(path, 'cloneWhatsapp.db');

    // await databaseFactory.openDatabase(dbPath);
  });
  group("description", () {
    test(
      "Insert Chat Data",
      () async {
        final result = await chatListController.insertData();

        //  await chatListController.getChatList();

        expect(result, 1);
        //  expect("", isA<ChatListController>());
        // expect(chatListController.chatList, isA<ChatList>());
      },
    );

    test("Status Insert", () async {
      final res = await statusController.insertStatus();
      expect(res, 1);
    });
  });
}
