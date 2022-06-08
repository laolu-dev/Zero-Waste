import 'package:flutter/material.dart';
import 'package:zero_waste/config/appTheme.dart';
import 'package:zero_waste/nav/bottom_bar_nav.dart';
import 'package:zero_waste/utils/appBottomNavigationBar/bottom_navigation_bar.dart';
import 'package:zero_waste/widgets/notification_widget.dart';
import 'package:zero_waste/widgets/product_builder.dart';

import '../../../widgets/Feed_app_bar_widget.dart';

class ProductScreen extends StatefulWidget {
  static const id = 'ProductScreen';
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const BottomBarNavigator(cIndex: 0),
      body: SafeArea(
        child: Column(
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
            const Expanded(child: ProductBuilder()),
          ],
        ),
      ),
      // bottomNavigationBar: AppBottomNavigationBar()
      //     .appBottomNavigationBar(changeIndex, _selectedIndex),
    );
  }
}
