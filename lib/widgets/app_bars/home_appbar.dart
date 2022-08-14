import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/res.dart';
import '../notification_widget.dart';
import '../user_avatar.dart';

class ProfileBar extends StatelessWidget {
  final String userName;
  const ProfileBar({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const UserAvatar(defineImageBorder: 50),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Text(
            'Welcome, $userName',
            style: GoogleFonts.jost(
                color: Resources.color.black,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        const NotificationWidget(),
      ],
    );
  }
}
