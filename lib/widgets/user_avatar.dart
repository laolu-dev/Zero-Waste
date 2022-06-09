import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/user_data.dart';

class UserAvatar extends StatefulWidget {
  final int defineImageBorder;
  const UserAvatar({Key? key, required this.defineImageBorder})
      : super(key: key);

  @override
  State<UserAvatar> createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  @override
  Widget build(BuildContext context) {
    final userProfile = Provider.of<UserAuth>(context);
    File? user = userProfile.profileImage;
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: user != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(
                widget.defineImageBorder.toDouble(),
              ),
              child: Image.file(user, fit: BoxFit.cover),
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(
                widget.defineImageBorder.toDouble(),
              ),
              child: const Icon(
                Icons.account_circle,
                color: Colors.grey,
                size: 20,
              ),
            ),
    );
  }
}
