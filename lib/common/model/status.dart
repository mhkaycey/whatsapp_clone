// ignore_for_file: public_member_api_docs, sort_constructors_first

class Status {
  String name;
  String date;
  String image;
  Status({
    required this.name,
    required this.date,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'date': date,
      'image': image,
    };
  }

  factory Status.fromJson(Map<String, dynamic> map) {
    return Status(
      name: map['name'] as String,
      date: map['date'] as String,
      image: map['image'] as String,
    );
  }
}
