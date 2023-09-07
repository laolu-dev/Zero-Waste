import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/constants/constants.dart';
import '../features/account/presentation/controller/camera.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Camera>(
      builder: (context, camera, _) {
        return camera.profileImage?.path != null
            ? CircleAvatar(
                radius: 25,
                backgroundImage: FileImage(camera.profileImage!),
              )
            : CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(AppConstants.dummyUser),
              );
      },
    );
  }
}
