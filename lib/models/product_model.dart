class ProductModel {
  final num id;
  final String name;
  final String imageUrl;
  final String description;
  final num price;
  final String categeory;
  final String brand;

  ProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.price,
    required this.categeory,
    required this.brand,
  });

  factory ProductModel.formJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["product"]["id"],
      name: json["product"]["title"],
      imageUrl: json["product"]["image"],
      description: json["product"]["description"],
      price: json["product"]["price"],
      categeory: json["product"]["category"],
      brand: json["product"]["brand"],
    );
  }
}
