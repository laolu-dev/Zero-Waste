import 'package:flutter/material.dart';

import '../../../../core/constants/styles/colors.dart';


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
      trailing: Icon(Icons.navigate_next, color: AppColors.borderTile),
      tileColor: AppColors.white,
      iconColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColors.borderTile),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
