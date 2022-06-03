import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String? userName;
  const UserAvatar({
    Key? key,
    this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: userName == null
          ? const Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              // size: 32,
            )
          : Image.network(userName!),
    );
  }
}
