import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../config/res.dart';
import '../../../widgets/user_avatar.dart';

import '../../../widgets/notification_widget.dart';

class DashboardBar extends StatelessWidget {
  final String? user;
  const DashboardBar({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          const UserAvatar(image: ''),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              'Welcome, $user',
              style: GoogleFonts.jost(
                color: Resources.color.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const NotificationWidget(),
        ],
      ),
    );
  }
}
