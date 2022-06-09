import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/market_data.dart';
import 'package:zero_waste/providers/product_data.dart';
import 'package:zero_waste/widgets/user_avatar.dart';

import 'Feed_app_bar_widget.dart';

class MarketViewBuilder extends StatelessWidget {
  const MarketViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<MarketData, ProductData>(
      builder: (context, marketData, productData, child) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView.builder(
          itemCount: marketData.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final data = marketData.item[index];
            return FeedAppBar(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: const UserAvatar(defineImageBorder: 1000),
              ),
              titleWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data.cropType),
                  Text(data.location),
                ],
              ),
              location: null,
              trailingWidget: Column(
                children: [Text(data.date), Text(data.weight)],
              ),
            );
          },
        ),
      ),
    );
  }
}
