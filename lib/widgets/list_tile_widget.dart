import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

import '../models/market_items.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile(
      {Key? key,
      required this.tileText,
      required this.tileIcon,
      required this.routeName})
      : super(key: key);
  final String tileText;
  final String routeName;
  final IconData tileIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, '/$routeName'),
      title: Text(tileText, style: tileTextStyle),
      leading: Icon(tileIcon),
      trailing: Icon(Icons.navigate_next, color: headColor),
      tileColor: white,
      iconColor: primaryColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: hintTextColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
