import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/widgets/Feed_app_bar_widget.dart';
import 'package:zero_waste/widgets/notification_widget.dart';
import 'package:zero_waste/widgets/user_chat_builder.dart';
import '../../../widgets/add_icon.dart';
import '../../../widgets/chat_icon.dart';

class NewConversationScreen extends StatelessWidget {
  const NewConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedData>(
      builder: (context, feedData, child) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 33.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ChatIcon(isActive: false),
              AddIcon(alignTextToRight: false, isActive: false),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Column(
              children: const [
                FeedAppBar(
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
                UserChatBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
