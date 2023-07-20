import 'package:flutter/material.dart';
import '../../../shared/res.dart';
import '../../../widgets/user_avatar.dart';

class ConnectionTile extends StatelessWidget {
  final String name;
  final String profileUrl;
  final String farmerType;
  final String location;
  final String btnAction;
  final void Function()? onTap;
  const ConnectionTile({
    super.key,
    this.onTap,
    required this.btnAction,
    required this.name,
    required this.profileUrl,
    required this.farmerType,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: UserAvatar(image: profileUrl),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(farmerType),
            Text(location),
          ],
        ),
        trailing: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            backgroundColor: Resources.color.primary,
            foregroundColor: Resources.color.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Text(
            btnAction,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
