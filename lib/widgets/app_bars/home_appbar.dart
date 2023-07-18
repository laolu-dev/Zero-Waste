import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/user.dart';
import '../../shared/res.dart';
import '../notification_widget.dart';
import '../user_avatar.dart';

class Home extends StatelessWidget {
  final Farmer user;
  const Home({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const UserAvatar(),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: Text(
            'Welcome, ${user.name}',
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
