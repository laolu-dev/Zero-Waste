import 'package:flutter/foundation.dart';
import '../../../models/market_items.dart';

final List<MarketItems> _initialData = List.generate(
  50,
  (index) => MarketItems(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
    cropType: 'Grains',
    weight: '1Kg',
    location: 'Lagos, Nigeria',
    date: '17/22/2003',
  ),
);

class MarketData extends ChangeNotifier {
  final List<MarketItems> _items = _initialData;

  List<MarketItems> get items => _items;

  int get length => _items.length;
}
