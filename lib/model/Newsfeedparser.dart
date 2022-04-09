// To parse this JSON data, do
//
//     final newsfeedparser = newsfeedparserFromJson(jsonString);

import 'dart:convert';

List<Newsfeedparser> newsfeedparserFromJson(String str) => List<Newsfeedparser>.from(json.decode(str).map((x) => Newsfeedparser.fromJson(x)));

String newsfeedparserToJson(List<Newsfeedparser> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Newsfeedparser {
  Newsfeedparser({
    this.id,
    this.userId,
    this.receiverId,
    this.message,
    this.love,
    this.public,
    this.type,
    this.shares,
    this.images,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? userId;
  int? receiverId;
  String? message;
  int? love;
  int? public;
  String? type;
  int? shares;
  String? images;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Newsfeedparser.fromJson(Map<String, dynamic> json) => Newsfeedparser(
    id: json["id"],
    userId: json["user_id"],
    receiverId: json["receiver_id"],
    message: json["message"],
    love: json["love"],
    public: json["public"],
    type: json["type"],
    shares: json["shares"],
    images: json["images"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "receiver_id": receiverId,
    "message": message,
    "love": love,
    "public": public,
    "type": type,
    "shares": shares,
    "images": images,
    "status": status,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
  };
}
