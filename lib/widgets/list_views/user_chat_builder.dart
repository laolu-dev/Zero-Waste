import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../providers/feed_data.dart';
import '../../shared/res.dart';
import '../sub_user_info_widget.dart';
import '../user_chat_widget.dart';

import '../../features/chats/widgets/customer_user_info.dart';

class UsersChatBuilder extends StatelessWidget {
  const UsersChatBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedData>(
      builder: (context, feedData, child) {
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemBuilder: (context, index) {
            final feed = feedData.feeds[index];
            return UserChatWidget(
              customerUserChatInfo: CustomerUserInfo(
                title: SubUserInfo(
                  title: feed.userName,
                  title1TextStyle: GoogleFonts.jost(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Resources.color.black),
                  subtitle2: feed.isOnline ? 'Online' : 'Offline',
                  subtitle2Color: feed.isOnline ? Colors.blue : null,
                ),
              ),
              customerUserInfo: CustomerUserInfo(
                imageUrl: feed.profileImage,
                title: SubUserInfo(
                  title: feed.userName,
                  title1TextStyle: GoogleFonts.jost(
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
            );
          },
          itemCount: feedData.length,
        );
      },
    );
  }
}
