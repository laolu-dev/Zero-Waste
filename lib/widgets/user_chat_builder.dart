import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/widgets/sub_user_info_widget.dart';
import 'package:zero_waste/widgets/user_chat_widget.dart';

import 'customer_user_info.dart';

class UserChatBuilder extends StatelessWidget {
  const UserChatBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedData>(
        builder: (context, feedData, child) => SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final feed = feedData.feeds[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 0.0),
                    child: UserChatWidget(
                      customerUserChatInfo: CustomerUserInfo(
                        title: SubUserInfo(
                          title: feed.userName,
                          title1TextStyle: const TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                          subtitle2: feed.isOnline ? 'Online' : 'Offline',
                          subtitle2Color: feed.isOnline ? Colors.blue : null,
                        ),
                      ),
                      customerUserInfo: CustomerUserInfo(
                        imageUrl: feed.profileImage,
                        title: SubUserInfo(
                          title: feed.userName,
                          title1TextStyle: const TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                          subtitle1: feed.userLocation,
                          subtitle2: 'Posted at ${feed.postTime}',
                        ),
                      ),
                      userName: feed.userName,
                      subTitle: SubUserInfo(
                        subtitle2: feed.userLocation,
                        title: feed.farmProduction,
                      ),
                    ),
                  );
                },
                itemCount: feedData.length,
              ),
            ));
  }
}
