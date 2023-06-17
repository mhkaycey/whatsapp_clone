import 'dart:developer';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:whatsapp_clone/common/model/chatlist.dart';
import 'package:path/path.dart';
import 'package:whatsapp_clone/common/model/status.dart';

class DBHelper {
  static Database? database;
  static const int _version = 1;
  static const String dbName = 'cloneWhatsapp.db';
  static const String _tableUser = 'user';
  static const String _tableChat = 'chatList';
  static const String _tableStatus = 'status';
  List<ChatList> chatlist = [];
  List<Status> statuslist = [];

  DatabaseFactory databaseFactory = databaseFactoryFfi;

  static Future<void> iniDb() async {
    if (database != null) {
      return;
    }
    try {
      String path = await getDatabasesPath();
      String dbPath = join(path, dbName);
      database = await openDatabase(dbPath, version: _version,
          onCreate: (db, version) async {
        await createTables(db);
      });
    } catch (e) {
      log(e.toString());
    }
  }

  static createTables(Database db) async {
    await db.execute(
      'CREATE TABLE IF NOT EXISTS $_tableUser('
      'id INTEGER PRIMARY KEY AUTOINCREMENT, '
      'phoneNumber INTEGER, '
      'username TEXT)',
    );

    await db.execute(
      'CREATE TABLE IF NOT EXISTS $_tableChat('
      'id INTEGER PRIMARY KEY AUTOINCREMENT, '
      'message TEXT, '
      'time TEXT, '
      'username TEXT)',
    );

    await db.execute(
      'CREATE TABLE IF NOT EXISTS $_tableStatus('
      'id INTEGER PRIMARY KEY AUTOINCREMENT, '
      'name TEXT, '
      'date TEXT, '
      'image TEXT)',
    );
    // print("Created Successfully");
  }

  Future<int> insertChatList(ChatList? chatList) async {
    var result = await database?.insert(_tableChat, chatList!.toJson()) ?? 1;
    return result;
  }

  Future<int> insertStatusList(Status? status) async {
    var result = await database?.insert(_tableStatus, status!.toJson()) ?? 1;
    return result;
  }

  Future<List<Map<String, dynamic>>> getStatus() async {
    final db = await _getDb();

    // print(_database!.query(_tableChat));
    return db.query(_tableStatus);
  }

  Future<List<Map<String, dynamic>>> getChatList() async {
    final db = await _getDb();

    // print(_database!.query(_tableChat));
    return db.query(_tableChat);
  }

  Future<Database> _getDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, dbName);
    return openDatabase(path, version: _version,
        onCreate: (db2, version) async {
      await createTables(db2);
    });
  }
}
