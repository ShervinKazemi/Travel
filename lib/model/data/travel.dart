class Travel {
  final String id;
  final String name;
  final String country;
  final String city;
  final String rating;
  final String price;
  final String image;
  final String description;

  const Travel(
    {
      required this.id,
      required this.name,
      required this.country,
      required this.city,
      required this.rating,
      required this.price,
      required this.image,
      required this.description
    }
  );

  factory Travel.fromMap(Map<String, String> travels) {
    return Travel(
      id: travels["id"] ?? "id is null",
      name: travels["name"] ?? "name is null",
      country: travels["country"] ?? "country is null",
      city: travels["city"]?? "city is null",
      rating: travels["rating"]?? "rating is null",
      price: travels["price"] ?? "price is null",
      image: travels["image"] ?? "image is null",
      description: travels["description"] ?? "description is null"
    );
  }

}