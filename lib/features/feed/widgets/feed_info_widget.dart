import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/config/res.dart';

import '../../../models/new_conversation.dart';
import '../../../provider/add_new_conversation.dart';
import '../../chats/screens/chat_screen.dart';

import '../../../widgets/user_avatar.dart';

import '../../../models/feed.dart';

class FeedInfoWidget extends StatefulWidget {
  final FeedInfo? feed;
  const FeedInfoWidget({Key? key, this.feed}) : super(key: key);

  @override
  State<FeedInfoWidget> createState() => _FeedInfoWidgetState();
}

class _FeedInfoWidgetState extends State<FeedInfoWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<ColorTween> animation;

  @override
  void initState() {
    super.initState();

    // animation = ColorTween();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 5,
              offset: const Offset(5, 7)),
        ],
        borderRadius: BorderRadius.circular(18),
        color: Resources.color.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              UserAvatar(
                  image:
                      widget.feed?.profileImage ?? Resources.iString.dummyUser),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.feed?.userName ?? 'Haim Manoel',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.feed?.userLocation ?? 'Lagos, Nigeria',
                      style: const TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(24, 24, 24, 1),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Posted at ${widget.feed?.postTime}',
                      style: const TextStyle(
                          fontSize: 10,
                          color: Color.fromRGBO(24, 24, 24, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.feed?.farmProduction ?? 'Grains',
                    style: TextStyle(
                      fontSize: 20,
                      color: Resources.color.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    widget.feed?.weightOfProduct ?? '1kg',
                    style: TextStyle(
                      fontSize: 12,
                      color: Resources.color.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(widget.feed!.pictureOfProduct,
                height: 120,
                width: double.infinity,
                alignment: Alignment.center,
                fit: BoxFit.fill),
          ),
          const SizedBox(height: 5),
          const Divider(color: Colors.grey, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {
                  context.read<ConversationsProvider>().addNewConversation(
                        NewConnection(
                          name: widget.feed!.userName,
                          profileUrl: widget.feed!.profileImage as String,
                          farmerType: widget.feed!.typeOfFarmer,
                          location: widget.feed!.userLocation,
                        ),
                      );
                  pushNewScreen(context,
                      screen: ChatScreen(
                        name: widget.feed!.userName,
                        profileUrl: widget.feed?.profileImage,
                      ));
                },
                style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                icon: const Icon(Icons.thumb_up_outlined),
                label: const Text(
                  'Comment',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.thumb_up_outlined, color: Colors.grey[400]),
                style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                label: const Text(
                  'Like',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
