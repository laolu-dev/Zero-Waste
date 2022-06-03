import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zero_waste/widgets/feed_widget.dart';
import 'package:ionicons/ionicons.dart';
import '../models/feed_data.dart';
import '../widgets/Feed_app_bar_widget.dart';
import '../widgets/notification_widget.dart';
import 'chat_screen.dart';

class FeedsPage extends StatelessWidget {
  FeedsPage({Key? key}) : super(key: key);
  final List<Feed> feeds = [
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
  ];
  // onPressed: () => Navigator.of(context).push(
  // MaterialPageRoute(builder: (context) => ChatScreen())),

  @override
  Widget build(BuildContext context) {
    final Color textFieldColor = HexColor('#E3FFF7');
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 33.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                FloatingActionButton(
                  heroTag: null,
                  backgroundColor: Colors.grey,
                  onPressed: null,
                  child: Icon(Icons.add, size: 45),
                ),
                SizedBox(width: 5.0),
                Text(
                  'New Conversation',
                  style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Chats',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Jost',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(width: 5.0),
                Card(
                  elevation: 15,
                  child: Container(
                    child: Image.asset(
                      'assets/images/chat_icon.png',
                      color: Colors.green,
                      height: 41.99,
                      width: 45,
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: FeedAppBar(
                titleWidget: Text(
                  'Feeds',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                trailingWidget: NotificationWidget(),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(100.0),
                color: textFieldColor,
              ),
              child: TextField(
                cursorColor: Colors.green,
                decoration: InputDecoration(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    // labelText: ,
                    hintText: 'Search for farmers',
                    fillColor: textFieldColor,
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green.shade50,
                            style: BorderStyle.none))),
              ),
            ),
            const SizedBox(height: 10.0),
            FeedWidget(feed: feeds),
          ],
        ),
      ),
    );
  }
}
