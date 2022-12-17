import 'package:sfuverce_app/models/parse.dart';

class ItemCart {
  String categoryId;
  String productId;
  String name;
  String imagePath;
  int discountPercent;
  double originalPrice;
  String color;
  int number;

  ItemCart(
      {this.categoryId,
      this.productId,
      this.name,
      this.imagePath,
      this.originalPrice,
      this.color,
      this.discountPercent,
      this.number});

  factory ItemCart.fromJson(Map<String, dynamic> data) {
    //print("aaaa $id");
    String categoryId = data['categoryId'];
    String productId = data['productId'];
    String name = data['name'];
    String imagePath = data['imagePath'];
    int discountPercent = Parse.parseIntFromJson(data['discountPercent']);
    int number = Parse.parseIntFromJson(data['number']);
    double originalPrice = Parse.parseDoubleFromJson(data['originalPrice']);
    String color = data['color'];
    return ItemCart(
      categoryId: categoryId,
      productId: productId,
      color: color,
      name: name,
      imagePath: imagePath,
      discountPercent: discountPercent,
      originalPrice: originalPrice,
      number: number,
    );
  }
}
