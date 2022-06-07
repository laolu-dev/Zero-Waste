import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/product_data.dart';
import 'package:zero_waste/screens/second_product_screen.dart';
import 'package:zero_waste/widgets/product_widget.dart';

import '../providers/feed_data.dart';

class ProductBuilder extends StatelessWidget {
  const ProductBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<ProductData, FeedData>(
        builder: (context, productData, feedData, child) => SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final feed = feedData.feeds[index];
                  final product = productData.products[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondProductScreen(
                                  userProfilePicture: feed.profileImage,
                                  userName: feed.userName,
                                  userLocation: product.userLocation,
                                  harvestDate: product.harvestDate,
                                  productWeight: product.productWeight,
                                  productRating:
                                      product.productRating.toStringAsFixed(1),
                                  typeOfFarmer: '',
                                ))),
                    child: ProductWidget(
                      image: product.productImage,
                      title: product.productName,
                      subtitle1: 'Location: ${product.userLocation}',
                      subtitle2: 'Harvest: ${product.harvestDate}',
                      baseIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.productWeight,
                            style: const TextStyle(
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w900,
                                fontSize: 14.0,
                                color: Colors.black),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: productData.length,
              ),
            ));
  }
}
