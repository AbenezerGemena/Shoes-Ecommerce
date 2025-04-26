// Sample products

import 'package:flutter/material.dart';

class ProductMode {
  final String name;
  final double price;
  final String imageUrl;
  bool isFavorite;
  final List<Color> colors;
  ProductMode({
    required this.colors,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.isFavorite = false

  });
}







