import 'package:flutter/material.dart';

class Product {
  String image;
  String title;
  int price;
  double star;
  bool isSaved;
  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.star,
    required this.isSaved, required List<MaterialColor> colors,
   
  });
}