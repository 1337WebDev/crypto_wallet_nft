class NFTModel {
  final int id;
  final String name;
  final String image;
  final double price;
  final String description;

  NFTModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });

  factory NFTModel.fromJson(Map<String, dynamic> json) {
    try {
      return NFTModel(
        id: json['id'] ?? 0,
        name: json['name'] ?? "",
        image: json['image'] ?? "",
        price: json['price'] ?? 0.0,
        description: json['description'] ?? "",
      );
    } catch (e) {
      throw Exception("Error in NFTModel.fromJson: $e");
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'description': description,
    };
  }

  @override
  String toString() {
    return 'NFTModel(id: $id, name: $name, image: $image, price: $price, description: $description)';
  }

  static List<NFTModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => NFTModel.fromJson(json)).toList();
  }
}
