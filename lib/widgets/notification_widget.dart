import 'package:flutter/material.dart';
import '../core/constants/styles/colors.dart';

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
          border: Border.all(color: AppColors.primary),
        ),
        child: Icon(Icons.notifications_none,
            color: AppColors.black, size: 30),
      ),
    );
  }
}
