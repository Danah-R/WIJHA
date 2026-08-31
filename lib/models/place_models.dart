class PlaceModels {
  String? name;
  List<String>? images;
  String? description;

  PlaceModels({this.name, this.images, this.description});

  factory PlaceModels.fromJson(Map<String, dynamic> json) {
    return PlaceModels(
      name: json['name'],
      images: json['images'],
      description: json['description'],
    );
  }
}
