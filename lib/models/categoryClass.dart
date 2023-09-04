// To parse this JSON data, do
//
//     final category1 = category1FromJson(jsonString);

import 'dart:convert';

Category1 category1FromJson(String str) => Category1.fromJson(json.decode(str));

String category1ToJson(Category1 data) => json.encode(data.toJson());

class Category1 {
  List<Category>? categories;

  Category1({
    this.categories,
  });

  factory Category1.fromJson(Map<String, dynamic> json) => Category1(
        categories: json["categories"] == null
            ? []
            : List<Category>.from(
                json["categories"]!.map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
      };
}

class Category {
  String? id;
  String? name;
  String? image;
  DateTime? dateModified;
  DateTime? dateCreated;

  Category({
    this.id,
    this.name,
    this.image,
    this.dateModified,
    this.dateCreated,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        dateModified: json["date_modified"] == null
            ? null
            : DateTime.parse(json["date_modified"]),
        dateCreated: json["date_created"] == null
            ? null
            : DateTime.parse(json["date_created"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "date_modified": dateModified?.toIso8601String(),
        "date_created": dateCreated?.toIso8601String(),
      };
}
