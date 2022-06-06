import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/authentication.dart';
import 'package:zero_waste/utils/user_preferences.dart';
import 'package:zero_waste/widgets/profile_widget.dart';

import '../../models/user.dart';

class ProfileAccount extends StatefulWidget {
  const ProfileAccount({Key? key}) : super(key: key);

  @override
  State<ProfileAccount> createState() => _ProfileAccountState();
}

class _ProfileAccountState extends State<ProfileAccount> {
  final user = User();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: userAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  userInfo(context),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      profileButtons('My Posts', false),
                      profileButtons('Saved Posts', true)
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 18,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          child: Text('Guyy'),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15)),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
