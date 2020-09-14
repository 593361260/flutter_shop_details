import 'dart:ui';

import 'package:flutter/material.dart';

//产品model
class Product {
  final String image, title, description;
  final int prices, size, id;
  final Color color;

  Product(this.image, this.title, this.description, this.prices, this.size,
      this.id, this.color);
}

List<Product> list = [
  Product("", "", "", 99, 1, 1, Colors.black),
  Product("", "", "", 99, 1, 1, Colors.black),
  Product("", "", "", 99, 1, 1, Colors.black),
  Product("", "", "", 99, 1, 1, Colors.black),
  Product("", "", "", 99, 1, 1, Colors.black),
  Product("", "", "", 99, 1, 1, Colors.black),
];
