import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/models/user.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/providers/market_data.dart';
import 'package:zero_waste/providers/product_data.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/widgets/Feed_app_bar_widget.dart';
import 'package:zero_waste/widgets/market_view_builder.dart';
import 'package:zero_waste/widgets/notification_widget.dart';
import 'package:zero_waste/widgets/user_avatar.dart';
import '../../../models/market_items.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<MarketItems> _items = [
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

  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<UserAuth>(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FeedAppBar(
                  leading: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, '/ProfileAccount'),
                    child: const UserAvatar(
                        userProfilePicture: 'assets/images/guy.png'),
                  ),
                  titleWidget:
                      Text('Welcome, ${_user.name}', style: headerText),
                  trailingWidget: const NotificationWidget(),
                ),
                const SizedBox(height: 29),
                Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width,
                      maxHeight: 120),
                  color: primaryColor,
                  //First Container
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'How to use the app.',
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            'Learn about all the features of the app.',
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              'assets/images/play.png',
                              height: 29,
                              width: 29,
                            ),
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/images/book.png',
                        width: 90,
                        height: 90,
                      ),
                    ],
                  ),
                ),
                //Second Container
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: hintTextColor), color: white),
                  constraints:
                      const BoxConstraints(maxHeight: 148, maxWidth: 327),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Contract Farmer.',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            'Grow crops and sell your wastes \nproduce to other farmers.',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                            softWrap: true,
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/Types'),
                            style: TextButton.styleFrom(
                                minimumSize: const Size(87, 37),
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              'Get Chats',
                              style: buttonTextStyleTwo.copyWith(fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'assets/images/Texting.png',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                //List of available markets
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Market View',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color(0xff808080),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const MarketViewBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
