import 'package:travel/model/data/travel.dart';

class TravelsRepository {
  final List<Map<String, String>> travelsData = const [
    {
      "id": "1",
      "name": "Mount Fuji",
      "country": "Japan",
      "city": "Tokyo",
      "rating": "4.2",
      "price": "214",
      "time": "12 hours",
      "tempreture": "12 C",
      "image": "assets/image/image1.png",
      "description":
          "This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to ",
    },
    {
      "id": "2",
      "name": "Andes Mountain",
      "country": "America",
      "city": "South",
      "rating": "4.5",
      "price": "230",
      "time": "8 hours",
      "tempreture": "16 C",
      "image": "assets/image/image2.png",
      "description":
          "This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to ",
    },
  ];

  List<Travel> loadTravels() {
    return travelsData.map(
      (travles) => Travel.fromMap(travles) 
    ).toList();
  }

}
