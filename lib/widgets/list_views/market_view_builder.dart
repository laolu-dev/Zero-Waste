import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/market_data.dart';
import 'package:zero_waste/providers/product_data.dart';
import '../market_tile.dart';

class MarketViewBuilder extends StatelessWidget {
  const MarketViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<MarketData, ProductData>(
      builder: (context, marketData, productData, child) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView.builder(
          itemCount: marketData.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final data = marketData.item[index];
            return MarketTile(
                imageUrl: '',
                title: data.cropType,
                subTitle: data.location,
                weight: data.weight,
                date: data.date);
          },
        ),
      ),
    );
  }
}
