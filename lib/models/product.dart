import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';
@JsonSerializable()
class Product{
  final String title;
  double price;
  String id;
  String description;
  String image;
  @JsonKey(defaultValue:'')
  String category;
  Product(
      this.title,
      this.id,
      this.category,
      this.description,
      this.image,
      this.price
      );
  factory Product.fromJson(Map<String,dynamic>json) => _$ProductFromJson(json);
  Map<String,dynamic> toJson() => _$ProductToJson(this);
}