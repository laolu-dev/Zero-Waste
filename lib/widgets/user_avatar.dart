import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String? userProfilePicture;
  final double? size;
  const UserAvatar({
    Key? key,
    this.userProfilePicture,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: userProfilePicture == null
          ? Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: size ?? 32,
              // size: 32,
            )
          : Image.network(userProfilePicture!),
    );
  }
}
