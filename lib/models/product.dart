// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class Product {
  final String productImage;
  final String productName;
  final String userLocation;
  final String harvestDate;
  final String productWeight;
  final String comment;
  final double productRating;
  Product({
    required this.productImage,
    required this.productName,
    required this.userLocation,
    required this.harvestDate,
    required this.productWeight,
    required this.comment,
    required this.productRating,
  });


 

  Product copyWith({
    String? productImage,
    String? productName,
    String? userLocation,
    String? harvestDate,
    String? productWeight,
    String? comment,
    double? productRating,
  }) {
    return Product(
      productImage: productImage ?? this.productImage,
      productName: productName ?? this.productName,
      userLocation: userLocation ?? this.userLocation,
      harvestDate: harvestDate ?? this.harvestDate,
      productWeight: productWeight ?? this.productWeight,
      comment: comment ?? this.comment,
      productRating: productRating ?? this.productRating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productImage': productImage,
      'productName': productName,
      'userLocation': userLocation,
      'harvestDate': harvestDate,
      'productWeight': productWeight,
      'comment': comment,
      'productRating': productRating,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productImage: map['productImage'] as String,
      productName: map['productName'] as String,
      userLocation: map['userLocation'] as String,
      harvestDate: map['harvestDate'] as String,
      productWeight: map['productWeight'] as String,
      comment: map['comment'] as String,
      productRating: map['productRating'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(productImage: $productImage, productName: $productName, userLocation: $userLocation, harvestDate: $harvestDate, productWeight: $productWeight, comment: $comment, productRating: $productRating)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
  
    return 
      other.productImage == productImage &&
      other.productName == productName &&
      other.userLocation == userLocation &&
      other.harvestDate == harvestDate &&
      other.productWeight == productWeight &&
      other.comment == comment &&
      other.productRating == productRating;
  }

  @override
  int get hashCode {
    return productImage.hashCode ^
      productName.hashCode ^
      userLocation.hashCode ^
      harvestDate.hashCode ^
      productWeight.hashCode ^
      comment.hashCode ^
      productRating.hashCode;
  }
}
