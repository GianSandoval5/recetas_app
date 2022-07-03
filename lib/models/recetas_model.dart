class Recetas {
  final int id;
  final String name;
  final String img;

  const Recetas({
    required this.id,
    required this.name,
    required this.img,
  });

  factory Recetas.fromJson(Map<String, dynamic> json) => Recetas(
        id: json["id"],
        name: json["name"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": name,
        "img": img,
      };
}
