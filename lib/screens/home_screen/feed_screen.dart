import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zero_waste/widgets/feed_widget.dart';
import '../../models/feed_data.dart';

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
  @override
  Widget build(BuildContext context) {
    final Color textFieldColor = HexColor('#E3FFF7');
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 25.0,
                  ),
                  title: const Text(
                    'Feeds',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Container(
                    height: 38.0,
                    width: 38.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: primaryColor),
                    ),
                    child: Center(
                      child: Stack(
                        children: const [
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.black,
                          ),
                          Positioned(
                            left: 16.0,
                            child: Icon(
                              Icons.brightness_1,
                              size: 9.0,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
      ),
    );
  }
}
