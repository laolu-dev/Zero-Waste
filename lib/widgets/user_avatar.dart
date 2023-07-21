import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/config/res.dart';
import 'package:zero_waste/provider/authenticate.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserAuth>(
      builder: (context, profilePic, _) {
        return profilePic.user?.imagePath != null
            ? CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(profilePic.user!.imagePath!),
              )
            : CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(Resources.iString.dummyUser),
              );
      },
    );
  }
}
