import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../providers/feed_data.dart';
import '../../widgets/app_bars/page_appbar.dart';
import '../../widgets/list_views/user_chat_builder.dart';

import '../../shared/res.dart';


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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PageBar(pageTitle: 'New Conversations'),
                      const SizedBox(height: 10),
                      Text(
                        'Start a new conversation with other farmers',
                        softWrap: true,
                        style: GoogleFonts.jost(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Resources.color.tField,
                        ),
                      ),
                      const SizedBox(height: 19.5),
                    ],
                  ),
                ),
                const UsersChatBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
