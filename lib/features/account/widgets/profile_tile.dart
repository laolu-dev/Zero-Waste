import 'package:flutter/material.dart';
import '../../../utils/config/res.dart';

class ProfileTileOption extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  final String option;
  const ProfileTileOption(
      {super.key, required this.icon, required this.option, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(option, style: const TextStyle()),
      leading: Icon(icon),
      trailing: Icon(Icons.navigate_next, color: Resources.color.borderTile),
      tileColor: Resources.color.white,
      iconColor: Resources.color.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Resources.color.borderTile),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
