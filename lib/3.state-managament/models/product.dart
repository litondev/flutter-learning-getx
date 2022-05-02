import 'package:flutter/cupertino.dart';

class ProductModel{
  String? name;
  num? stock;
  String? description;

  ProductModel({
    @required this.name,
    @required this.stock,
    this.description
  });
}