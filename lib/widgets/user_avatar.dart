import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String image;
  const UserAvatar({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundImage: NetworkImage(image),
    );
  }
}
