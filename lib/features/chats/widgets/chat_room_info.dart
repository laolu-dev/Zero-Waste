import 'package:flutter/material.dart';
import 'package:zero_waste/widgets/user_avatar.dart';

class ChatRoomInfo extends StatelessWidget {
  final String name;
  final String profileUrl;
  final bool onlineStatus;
  const ChatRoomInfo(
      {super.key,
      required this.name,
      required this.profileUrl,
      required this.onlineStatus});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserAvatar(image: profileUrl),
         const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(19, 19, 19, 1),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              onlineStatus ? "Online" : "Offline",
              style: const TextStyle(
                fontSize: 11,
                color: Color.fromRGBO(62, 112, 167, 1),
              ),
            ),
          ],
        )
      ],
    );
  }
}
