// To parse this JSON data, do
//
//     final bukuu = bukuuFromJson(jsonString);

import 'dart:convert';

Bukuu bukuuFromJson(String str) => Bukuu.fromJson(json.decode(str));

String bukuuToJson(Bukuu data) => json.encode(data.toJson());

class Bukuu {
    Bukuu({
        required this.status,
        required this.message,
        required this.data,
    });

    String status;
    String message;
    List<Datum> data;

    factory Bukuu.fromJson(Map<String, dynamic> json) => Bukuu(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.title,
        required this.img,
        required this.author,
        required this.genre,
        required this.rating,
    });

    String title;
    String img;
    String author;
    List<String> genre;
    double rating;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        title: json["title"],
        img: json["img"],
        author: json["author"],
        genre: List<String>.from(json["Genre"].map((x) => x)),
        rating: json["rating"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "img": img,
        "author": author,
        "Genre": List<dynamic>.from(genre.map((x) => x)),
        "rating": rating,
    };
}
