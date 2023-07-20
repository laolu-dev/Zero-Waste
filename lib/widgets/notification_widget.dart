import 'package:flutter/material.dart';

import '../shared/res.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(38),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38),
          border: Border.all(color: Resources.color.primary),
        ),
        child: Icon(Icons.notifications_none,
            color: Resources.color.black, size: 30),
      ),
    );
  }
}
