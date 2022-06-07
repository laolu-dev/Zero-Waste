import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/screens/chat_screen.dart';
import 'package:zero_waste/widgets/customer_user_info.dart';
import 'package:zero_waste/widgets/product_widget.dart';

import '../config/appTheme.dart';
import '../widgets/Feed_app_bar_widget.dart';
import '../widgets/notification_widget.dart';
import '../widgets/product_builder.dart';

class SecondProductScreen extends StatelessWidget {
  final CustomerUserInfo customerUserChatInfo;
  final String? userProfilePicture;
  final String productImage;
  final String productName;
  final String userName;
  final String userLocation;
  final String harvestDate;
  final String typeOfFarmer;
  final String productWeight;
  final double productRating;
  const SecondProductScreen(
      {Key? key,
      required this.userProfilePicture,
      required this.userLocation,
      required this.harvestDate,
      required this.productWeight,
      required this.productRating,
      required this.userName,
      required this.typeOfFarmer,
      required this.customerUserChatInfo,
      required this.productName,
      required this.productImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const FeedAppBar(
            titleWidget: Text(
              'Products',
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            trailingWidget: NotificationWidget(),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: ElevatedButton(
                    onPressed: null,
                    style: ThemeHelper().buttonStyle(50.0, 10.0),
                    child: const Text(
                      'Active',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ElevatedButton(
                    onPressed: null,
                    style: ThemeHelper().buttonStyle(50.0, 10.0, Colors.grey),
                    child: const Text(
                      'Completed',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                Text(
                  productWeight,
                  style: const TextStyle(
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w900,
                    fontSize: 14.0,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Harvest: $userLocation',
                  style: const TextStyle(
                      fontFamily: 'Jost', fontSize: 14.0, color: Colors.black),
                ),
              ],
            ),
          ),
          ImageViewerWidget(
            productImage: productImage,
            height: 173.0,
          ),
          Row(
            children: [
              Expanded(
                child: ImageViewerWidget(
                  productImage: productImage,
                  height: 140.0,
                ),
              ),
              Expanded(
                child: ImageViewerWidget(
                  productImage: productImage,
                  height: 140.0,
                ),
              ),
              Expanded(
                child: ImageViewerWidget(
                  productImage: productImage,
                  height: 140.0,
                ),
              ),
            ],
          ),
          const Text(
            'Excellent Harvest available for exchange',
            style: TextStyle(
                fontFamily: 'Jost', fontSize: 14.0, color: Colors.black),
          ),
          ProductWidget(
            image: userProfilePicture!,
            title: userName,
            subtitle1: typeOfFarmer,
            subtitle2: userLocation,
            baseIcon: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productRating.toStringAsFixed(1),
                  style: const TextStyle(
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w900,
                    fontSize: 14.0,
                    color: Colors.green,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: productRating >= 1.0 ? Colors.yellow : Colors.grey,
                    ),
                    Icon(
                      Icons.star,
                      color: productRating >= 2.0 ? Colors.yellow : Colors.grey,
                    ),
                    Icon(
                      Icons.star,
                      color: productRating >= 3.0 ? Colors.yellow : Colors.grey,
                    ),
                    Icon(
                      Icons.star,
                      color: productRating >= 4.0 ? Colors.yellow : Colors.grey,
                    ),
                    Icon(
                      Icons.star,
                      color: productRating == 5.0 ? Colors.yellow : Colors.grey,
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen(
                                  customerUserChatInfo: customerUserChatInfo)));
                    },
                    style: ThemeHelper().buttonStyle(40.0, 10.0),
                    child: const Text(
                      'Chat',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          // const Expanded(child: ProductBuilder()),
        ],
      ),
      // bottomNavigationBar: AppBottomNavigationBar()
      //     .appBottomNavigationBar(changeIndex, _selectedIndex),
    );
  }
}

class ImageViewerWidget extends StatelessWidget {
  final String productImage;
  final double height;
  const ImageViewerWidget({
    Key? key,
    required this.productImage,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      // padding: const EdgeInsets.only(right: 20.0),
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20.0,
            offset: const Offset(0.0, 0.5),
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
        // color: primaryColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
          productImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
