import 'dart:convert';

class Product {
  final String name;
  final String description;
  final double quantity;
  final List<String> images;
  final String category;
  final double price;
  String? id;
  String? userId;

  Product({
    required this.name,
    required this.description,
    required this.quantity,
    required this.images,
    required this.category,
    required this.price,
    this.id,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'name': name,
      'description': description,
      'quantity': quantity,
      'images': images,
      'category': category,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      quantity: map['quantity'] ?? 0.0,
      images: map['images'] ?? '',
      category: map['category'] ?? '',
      price: map['price'] ?? 0.0,
    );
  }

  String toJson() {
    return json.encode(
      toMap(),
    );
  }

  factory Product.fromJson(String source) {
    return Product.fromMap(
      json.decode(source),
    );
  }
}