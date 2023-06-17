//import 'dart:convert';

class ChatList {
  int? id;
  String? message;
  String? time;
  String? username;
  ChatList({
    this.id,
    this.message,
    this.time,
    this.username,
  });

  ChatList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    message = json['message'];
    time = json['time'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['message'] = message;
    data['time'] = time;
    data['username'] = username;
    return data;
  }
  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'message': message,
  //     'time': time,
  //     'username': username,
  //   };
  // }

  factory ChatList.fromMap(Map<String, dynamic> map) {
    return ChatList(
      id: map['id'] as int,
      message: map['message'] as String,
      time: map['time'] as String,
      username: map['username'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory ChatList.fromJson(String source) =>
  //     ChatList.fromMap(json.decode(source) as Map<String, dynamic>);
}
