import 'package:flutter/material.dart';
import '../shared/res.dart';

class UserAvatar extends StatelessWidget {
  
  const UserAvatar({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 38,
      child: Image.asset(Resources.iString.dummyUser),
    );
  }
}
