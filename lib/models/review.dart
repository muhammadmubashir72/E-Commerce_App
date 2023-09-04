import 'dart:convert';

Review reviewFromJson(String str) => Review.fromJson(json.decode(str));

String reviewToJson(Review data) => json.encode(data.toJson());

class Review {
    List<dynamic>? reviews;

    double rating;
    String comment;

    Review({
        this.reviews, 
        required this.rating,
        required this.comment,
    });

    factory Review.fromJson(Map<String, dynamic> json) {
      return Review(
        reviews: json["reviews"] == null ? [] : List<dynamic>.from(json["reviews"]!.map((x) => x)),
        rating: json["rating"],
         comment: json["comment"],
    );
    }

    Map<String, dynamic> toJson() => {
        "reviews": reviews == null ? [] : List<dynamic>.from(reviews!.map((x) => x)),
    };
}

Add addFromJson(String str) => Add.fromJson(json.decode(str));

String addToJson(Add data) => json.encode(data.toJson());

class Add {
    String? detail;

    Add({
        this.detail,
    });

    factory Add.fromJson(Map<String, dynamic> json) => Add(
        detail: json["detail"],
    );

    Map<String, dynamic> toJson() => {
        "detail": detail,
    };
}