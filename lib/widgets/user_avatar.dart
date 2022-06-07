import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String? userProfilePicture;
  const UserAvatar({
    Key? key,
    this.userProfilePicture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: userProfilePicture == null
          ? const Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            )
          : Image.network(userProfilePicture!,
              height: 40.0, width: 40.0, fit: BoxFit.fill),
    );
  }
}
