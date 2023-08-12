import 'package:meyrick/models/product.dart';
import 'package:json_annotation/json_annotation.dart';
part 'cart.g.dart';
@JsonSerializable()
class Cart extends Product{
  int count =0;
  Cart(String title, String id, String category, String description, String image, String price,this.count):
  super(title,price,id,description,image,category as double);
  factory Cart.fromJson( Map<String, dynamic> json) => _$CartFromJson(json);
}