import 'dart:collection';

import 'package:flutter/foundation.dart';
import '../models/market_items.dart';

class MarketData extends ChangeNotifier {
  final List<MarketItems> _item = [
    MarketItems(
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
    MarketItems(
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
    MarketItems(
        cropType: 'Grains',
        weight: '1Kg',
        location: 'Lagos, Nigeria',
        date: '17/22/2003'),
    MarketItems(
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
