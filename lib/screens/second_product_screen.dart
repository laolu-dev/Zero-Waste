import 'package:flutter/material.dart';
import 'package:zero_waste/widgets/product_widget.dart';

import '../config/appTheme.dart';
import '../widgets/Feed_app_bar_widget.dart';
import '../widgets/notification_widget.dart';
import '../widgets/product_builder.dart';

class SecondProductScreen extends StatelessWidget {
  final String? userProfilePicture;
  final String userName;
  final String userLocation;
  final String harvestDate;
  final String typeOfFarmer;
  final String productWeight;
  final String productRating;
  const SecondProductScreen(
      {Key? key,
      required this.userProfilePicture,
      required this.userLocation,
      required this.harvestDate,
      required this.productWeight,
      required this.productRating,
      required this.userName,
      required this.typeOfFarmer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FeedAppBar(
            titleWidget: Text(
              'Product',
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
          ProductWidget(
            image: userProfilePicture!,
            title: userName,
            subtitle1: typeOfFarmer,
            subtitle2: userLocation,
            baseIcon: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productRating,
                  style: const TextStyle(
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w900,
                    fontSize: 14.0,
                    color: Colors.green,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),
                ElevatedButton(
                    onPressed: null,
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
