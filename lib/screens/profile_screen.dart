import 'package:flutter/material.dart';
import 'package:zero_waste/utils/user_preferences.dart';
import 'package:zero_waste/widgets/profile_widget.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  final user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: userAppBar(context),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  userInfo(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profileButtons('My Posts', false),
                      profileButtons('Saved Posts', true)
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          )),
    );
  }
}
