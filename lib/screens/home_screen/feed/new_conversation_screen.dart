import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/screens/home_screen/feed/feed_screen.dart';
import 'package:zero_waste/widgets/Feed_app_bar_widget.dart';
import 'package:zero_waste/widgets/notification_widget.dart';
import 'package:zero_waste/widgets/user_chat_builder.dart';
import '../../../widgets/add_icon.dart';
import '../../../widgets/chat_icon.dart';

class NewConversationScreen extends StatefulWidget {
  static const id = 'NewConversation';
  const NewConversationScreen({Key? key}) : super(key: key);

  @override
  State<NewConversationScreen> createState() => _NewConversationScreenState();
}

class _NewConversationScreenState extends State<NewConversationScreen> {
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 15.0),
              child: Column(
                children: [
                  const FeedAppBar(
                    titleWidget: Text(
                      'New Conversations',
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    trailingWidget: NotificationWidget(),
                    location: FeedsPage.id,
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 327),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Start a new conversation with other farmers',
                      softWrap: true,
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF979797),
                      ),
                    ),
                  ),
                  const SizedBox(height: 19.5),
                  const UserChatBuilder(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
