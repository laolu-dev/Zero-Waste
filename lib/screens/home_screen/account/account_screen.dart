import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/widgets/list_tile_widget.dart';

class MyAccount extends StatelessWidget {
  static const id = 'MyAccount';

  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserAuth>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pushNamed(context, '/Home'),
                      icon: const Icon(Icons.navigate_before, color: headColor),
                    ),
                    Text('My Account', style: headerText)
                  ],
                ),
                SizedBox(
                  width: 288,
                  height: 140,
                  child: SizedBox(
                    height: 109,
                    width: 211,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 211,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              socialLoginContainer(
                                  child: SvgPicture.asset(appImage)),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17.5, vertical: 10),
                                  primary: white,
                                  side: const BorderSide(color: primaryColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: Text(
                                  'Upload Images',
                                  style: contentText.copyWith(
                                      color: hintTextColor),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(user.name, style: orTextStyle),
                              Text(user.userType, style: labelTextStyle)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Column(
                  children: const [
                    ProfileTile(
                      tileText: 'My Profile',
                      tileIcon: Icons.person_outline,
                      routeName: 'ProfileAccount',
                    ),
                    SizedBox(height: 16),
                    ProfileTile(
                      tileText: 'Invite Farmers',
                      tileIcon: Icons.people_outline,
                      routeName: '',
                    ),
                    SizedBox(height: 16),
                    ProfileTile(
                      tileText: 'Upload Content',
                      tileIcon: Icons.cloud_upload_outlined,
                      routeName: '',
                    ),
                    SizedBox(height: 16),
                    ProfileTile(
                      tileText: 'Customer Support',
                      tileIcon: Icons.headset_mic,
                      routeName: '',
                    ),
                    SizedBox(height: 16),
                    ProfileTile(
                      tileText: 'Settings',
                      tileIcon: Icons.settings,
                      routeName: '',
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                Container(
                  height: 52,
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: elevatedButtonStyleTwo,
                    child: const Text("Sign Out"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
