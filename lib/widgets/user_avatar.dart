import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../features/auth/auth_state/user_data.dart';
import '../shared/res.dart';

class UserAvatar extends StatelessWidget {
  
  const UserAvatar({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image.asset(Resources.iString.dummyUser),
      radius: 38,
    );
  }
}
