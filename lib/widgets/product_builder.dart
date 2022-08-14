import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/product_data.dart';
import 'package:zero_waste/widgets/customer_user_info.dart';
import 'package:zero_waste/widgets/product_widget.dart';
import 'package:zero_waste/widgets/sub_user_info_widget.dart';
import '../providers/feed_data.dart';
import '../views/home_screen/products/product_details.dart';

class ProductBuilder extends StatelessWidget {
  const ProductBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<ProductData, FeedData>(
        builder: (context, productData, feedData, child) => SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final feed = feedData.feeds[index];
                  final product = productData.products[index];
                  return Card(
                    child: GestureDetector(
                      onTap: () => pushNewScreen(context,
                          screen: ProductDetails(
                            userProfilePicture: feed.profileImage,
                            userName: feed.userName,
                            userLocation: product.userLocation,
                            harvestDate: product.harvestDate,
                            productWeight: product.productWeight,
                            productRating: product.productRating,
                            typeOfFarmer: feed.typeOfFarmer,
                            customerUserChatInfo: CustomerUserInfo(
                              title: SubUserInfo(
                                title: feed.userName,
                                title1TextStyle: const TextStyle(
                                    fontFamily: 'Jost',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black),
                                subtitle2: feed.isOnline ? 'Online' : 'Offline',
                                subtitle2Color:
                                    feed.isOnline ? Colors.blue : null,
                              ),
                            ),
                            productName: product.productName,
                            productImage: product.productImage,
                          )),
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
                    ),
                  );
                },
                itemCount: productData.length,
              ),
            ));
  }
}
