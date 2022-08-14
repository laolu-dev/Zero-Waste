import 'dart:collection';

import 'package:flutter/foundation.dart';
import '../models/market_items.dart';

class MarketData extends ChangeNotifier {
  final List<MarketItems> _item = [
    MarketItems(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
    MarketItems(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
    MarketItems(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
    MarketItems(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
    MarketItems(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
  ];

  UnmodifiableListView<MarketItems> get item => UnmodifiableListView(_item);

  void addMarketItem(MarketItems marketItems) {
    _item.add(marketItems);
    notifyListeners();
  }

  int get length => _item.length;
}
