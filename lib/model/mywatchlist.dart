import 'dart:convert'as convert;

class MyWatchList {
  MyWatchList({
    required this.pk,
    required this.fields,
  });

  int pk;
  Fields fields;

  factory MyWatchList.fromJson(String str) =>
      MyWatchList.fromMap(convert.jsonDecode(str));

  String toJson() => convert.jsonEncode(toMap());

  factory MyWatchList.fromMap(Map<String, dynamic> json) => MyWatchList(
        pk: json["pk"],
        fields: Fields.fromMap(json["fields"]),
      );

  Map<String, dynamic> toMap() => {
        "pk": pk,
        "fields": fields.toMap(),
      };
}

class Fields {
  Fields({
    required this.title,
    required this.rating,
    required this.releaseDate,
    required this.review,
    required this.watched,
  });

  String title;
  double rating;
  String releaseDate;
  String review;
  bool watched;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        title: json["title"],
        rating: json["rating"].toDouble(),
        releaseDate: json["release_date"],
        review: json["review"],
        watched: json["watched"] == "Yes" ? true : false,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
        "watched": watched,
      };

  factory Fields.fromMap(Map<String, dynamic> json) => Fields(
        title: json["title"],
        rating: json["rating"].toDouble(),
        releaseDate: json["release_date"],
        review: json["review"],
        watched: json["watched"] == "Yes" ? true : false,
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
        "watched": watched,
      };
}
