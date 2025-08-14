// To parse this JSON data, do
//
//     final travels = travelsFromJson(jsonString);

import 'dart:convert';

Travels travelsFromJson(String str) => Travels.fromJson(json.decode(str));

String travelsToJson(Travels data) => json.encode(data.toJson());

class Travels {
    List<Travel> travels;

    Travels({
        required this.travels,
    });

    factory Travels.fromJson(Map<String, dynamic> json) => Travels(
        travels: List<Travel>.from(json["travels"].map((x) => Travel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "travels": List<dynamic>.from(travels.map((x) => x.toJson())),
    };
}

class Travel {
    String id;
    String name;
    String city;
    String country;
    String rateing;
    String price;
    Detail detail;

    Travel({
        required this.id,
        required this.name,
        required this.city,
        required this.country,
        required this.rateing,
        required this.price,
        required this.detail,
    });

    factory Travel.fromJson(Map<String, dynamic> json) => Travel(
        id: json["id"],
        name: json["name"],
        city: json["city"],
        country: json["country"],
        rateing: json["rateing"],
        price: json["price"],
        detail: Detail.fromJson(json["detail"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "city": city,
        "country": country,
        "rateing": rateing,
        "price": price,
        "detail": detail.toJson(),
    };
}

class Detail {
    String time;
    String temperature;
    String rateing;
    String descreption;

    Detail({
        required this.time,
        required this.temperature,
        required this.rateing,
        required this.descreption,
    });

    factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        time: json["time"],
        temperature: json["temperature"],
        rateing: json["rateing"],
        descreption: json["descreption"],
    );

    Map<String, dynamic> toJson() => {
        "time": time,
        "temperature": temperature,
        "rateing": rateing,
        "descreption": descreption,
    };
}
