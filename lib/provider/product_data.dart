import 'dart:collection';

import 'package:flutter/material.dart';
import '../models/product.dart';

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
        comment: ''),
    Product(
        productImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        productName: 'Grains',
        userLocation: 'Lagos, Nigeria',
        harvestDate: 'May, 2022',
        productWeight: '1kg',
        productRating: 4.7,
        comment: ''),
    Product(
        productImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        productName: 'Grains',
        userLocation: 'Lagos, Nigeria',
        harvestDate: 'May, 2022',
        productWeight: '1kg',
        productRating: 4.0,
        comment: ''),
    Product(
        productImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        productName: 'Grains',
        userLocation: 'Lagos, Nigeria',
        harvestDate: 'May, 2022',
        productWeight: '1kg',
        productRating: 4.7,
        comment: ''),
    Product(
        productImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        productName: 'Grains',
        userLocation: 'Lagos, Nigeria',
        harvestDate: 'May, 2022',
        productWeight: '1kg',
        productRating: 4.0,
        comment: ''),
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

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  int get length => _products.length;
}
