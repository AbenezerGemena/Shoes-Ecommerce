class ShoesMode {
  final String id;
  final String name;
  final String brand;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> sizes;
  final List<String> colors; // optional if you support multiple color options
  final bool isFavorite;

  ShoesMode({

    required this.id,
    required this.name,
    required this.brand,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.sizes,
    this.colors = const [],
    this.isFavorite = false,

  });


  factory ShoesMode.fromJson(Map<String, dynamic> json) {
    return ShoesMode(
      id: json['id'],
      name: json['name'],
      brand: json['brand'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      sizes: List<String>.from(json['sizes']),
      colors: List<String>.from(json['colors'] ?? []),
      isFavorite: json['isFavorite'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'sizes': sizes,
      'colors': colors,
      'isFavorite': isFavorite,
    };
  }
}
