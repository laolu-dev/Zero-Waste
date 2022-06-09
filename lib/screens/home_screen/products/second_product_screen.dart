import 'package:flutter/material.dart';
import 'package:zero_waste/nav/bottom_bar_nav.dart';
import 'package:zero_waste/screens/home_screen/products/product_screen.dart';
import 'package:zero_waste/widgets/customer_user_info.dart';
import 'package:zero_waste/widgets/product_widget.dart';
import '../../../config/appTheme.dart';
import '../../../widgets/Feed_app_bar_widget.dart';
import '../../../widgets/image_viewer_widget.dart';
import '../../../widgets/notification_widget.dart';
import '../feed/chat_screen.dart';

class SecondProductScreen extends StatefulWidget {
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
  State<SecondProductScreen> createState() => _SecondProductScreenState();
}

class _SecondProductScreenState extends State<SecondProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarNavigator(cIndex: 2),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              location: ProductScreen.id,
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
            const SizedBox(height: 10.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 40.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.productName,
                        style: const TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                      Text(
                        widget.productWeight,
                        style: const TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w900,
                          fontSize: 14.0,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        'Harvest: ${widget.userLocation}',
                        style: const TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 14.0,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ImageViewerWidget(
              productImage: widget.productImage,
              height: 173.0,
            ),
            Row(
              children: [
                Expanded(
                  child: ImageViewerWidget(
                    productImage: widget.productImage,
                    height: 120.0,
                  ),
                ),
                Expanded(
                  child: ImageViewerWidget(
                    productImage: widget.productImage,
                    height: 120.0,
                  ),
                ),
                Expanded(
                  child: ImageViewerWidget(
                    productImage: widget.productImage,
                    height: 120.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Excellent Harvest available for exchange',
                style: TextStyle(
                    fontFamily: 'Jost', fontSize: 14.0, color: Colors.black),
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ProductWidget(
                image: widget.userProfilePicture!,
                title: widget.userName,
                subtitle1: widget.typeOfFarmer,
                subtitle2: widget.userLocation,
                baseIcon: SizedBox(
                  width: 183,
                  child: Row(
                    children: [
                      Text(
                        widget.productRating.toStringAsFixed(1),
                        style: const TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w900,
                          fontSize: 14.0,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 64,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: widget.productRating >= 1.0
                                  ? Colors.yellow
                                  : Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              color: widget.productRating >= 2.0
                                  ? Colors.yellow
                                  : Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              color: widget.productRating >= 3.0
                                  ? Colors.yellow
                                  : Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              color: widget.productRating >= 4.0
                                  ? Colors.yellow
                                  : Colors.grey,
                            ),
                            Icon(
                              Icons.star,
                              color: widget.productRating == 5.0
                                  ? Colors.yellow
                                  : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 63,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatScreen(
                                      customerUserChatInfo:
                                          widget.customerUserChatInfo),
                                ),
                              );
                            },
                            style: ThemeHelper().buttonStyle(40.0, 10.0),
                            child: const Text(
                              'Chat',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
