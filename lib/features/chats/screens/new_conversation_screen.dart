import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import '../../../utils/config/res.dart';

import '../../../provider/add_new_conversation.dart';
import 'chat_screen.dart';

import '../../../widgets/notification_widget.dart';
import '../../home/widget/connection_tile.dart';

class NewConversationScreen extends StatelessWidget {
  static const id = 'NewConversation';
  const NewConversationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final conversations = context.watch<ConversationsProvider>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios,
                            color: Resources.color.black),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'New Conversations',
                          style: GoogleFonts.jost(
                            color: Resources.color.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const NotificationWidget()
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Start a new conversation and connect with other farmers',
                    softWrap: true,
                    style: GoogleFonts.jost(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Resources.color.hintText,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                child: ListView.builder(
              padding: const EdgeInsets.only(top: 10, right: 12, left: 6),
              itemBuilder: (context, index) {
                return conversations.users
                    .map((e) => ConnectionTile(
                          name: '$index ${e.name}',
                          profileUrl: e.profileUrl,
                          farmerType: e.farmerType,
                          location: e.location,
                          btnAction: 'Chat',
                          onTap: () {
                            pushNewScreen(context,
                                screen: ChatScreen(
                                  name: e.name,
                                  profileUrl: e.profileUrl,
                                ),
                                withNavBar: false);
                          },
                        ))
                    .toList()[index];
              },
              itemCount: conversations.users.length,
            )),
          ],
        ),
      ),
    );
  }
}
