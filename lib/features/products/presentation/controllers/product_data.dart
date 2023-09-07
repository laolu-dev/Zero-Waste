import 'dart:collection';

import 'package:flutter/material.dart';
import '../../domain/product.dart';

class ProductData extends ChangeNotifier {
  final List<Product> _products = [
    Product(
        productImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        productName: 'Grains',
        userLocation: 'Lagos, Nigeria',
        harvestDate: 'May, 2022',
        productWeight: '1kg',
        productRating: 4.0,
        comment: 'This is available and ready to be delivered anywhere.'),
    Product(
        productImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        productName: 'Grains',
        userLocation: 'Lagos, Nigeria',
        harvestDate: 'May, 2022',
        productWeight: '1kg',
        productRating: 4.7,
        comment: 'Come to bauchi state'),
    Product(
        productImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        productName: 'Grains',
        userLocation: 'Lagos, Nigeria',
        harvestDate: 'May, 2022',
        productWeight: '1kg',
        productRating: 4.0,
        comment: 'This is two weeks old'),
    Product(
        productImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        productName: 'Grains',
        userLocation: 'Lagos, Nigeria',
        harvestDate: 'May, 2022',
        productWeight: '1kg',
        productRating: 4.7,
        comment: ''),
  ];

  UnmodifiableListView<Product> get products => UnmodifiableListView(_products);

  void rate(double rating) {
    for (var product in _products) {
      rating = product.productRating;
    }
    notifyListeners();
  }

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  int get length => _products.length;
}
