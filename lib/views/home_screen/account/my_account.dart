import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/main.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/views/home_screen/account/profile.dart';
import 'package:zero_waste/widgets/app_bars/account_appbar.dart';
import '../../../models/user.dart';
import '../../../res/res.dart';
import '../../auth/login_screen.dart';

class MyAccount extends StatefulWidget {
  static const id = 'MyAccount';
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  File? image;
  final ImagePicker _picker = ImagePicker();

  _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Get images from: ', style: contentText),
          title: Text('Upload Images', style: headerText),
          actions: [
            TextButton(
              onPressed: () {
                getImage(source: ImageSource.camera);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(primary: primaryColor),
              child: const Text(
                'Camera',
                style: TextStyle(color: primaryColor),
              ),
            ),
            TextButton(
              onPressed: () {
                getImage(source: ImageSource.gallery);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(primary: primaryColor),
              child: const Text(
                'Gallery',
                style: TextStyle(color: primaryColor),
              ),
            )
          ],
        );
      },
    );
  }

  Future getImage({required ImageSource source}) async {
    try {
      final image = await _picker.pickImage(source: source);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        context.read<UserAuth>().getProfile(imageTemp);
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Cannot pick: $e');
    }
  }

  ListTile settings(Function()? btn,
      {required String tileText, required IconData tileIcon}) {
    return ListTile(
      onTap: btn,
      title: Text(tileText, style: tileTextStyle),
      leading: Icon(tileIcon),
      trailing: const Icon(Icons.navigate_next, color: headColor),
      tileColor: white,
      iconColor: primaryColor,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: hintTextColor),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserAuth>(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AccountBar(title: 'My Account'),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(1000),
                                child: Image.file(image!,
                                    width: 50, height: 50, fit: BoxFit.cover),
                              )
                            : Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: hintTextColor,
                                    borderRadius: BorderRadius.circular(70)),
                                child: const Icon(Icons.add_a_photo,
                                    color: primaryColor),
                              ),
                        const SizedBox(width: 25),
                        TextButton(
                          onPressed: () => _showAlertDialog(context),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 17.5, vertical: 10),
                            primary: white,
                            side: const BorderSide(color: primaryColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                          ),
                          child: Text('Upload Images',
                              style:
                                  contentText.copyWith(color: hintTextColor)),
                        )
                      ],
                    ),
                    const SizedBox(height: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 15),
                        FutureBuilder<Farmer?>(
                          future: user.farmer,
                          builder: (BuildContext context, snapshot) {
                            if (snapshot.hasData) {
                              final user = snapshot.data;
                              return Text(
                                user!.name,
                                style: GoogleFonts.jost(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Resources.color.black),
                              );
                            } else {
                              return const Text('');
                            }
                          },
                        ),
                        Text(user.userForm.typeOfFarmer, style: labelTextStyle)
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  settings(
                      () => pushNewScreen(context,
                          screen: const ProfileAccount()),
                      tileText: 'My Profile',
                      tileIcon: Icons.person_outline),
                  const SizedBox(height: 15),
                  settings(null,
                      tileText: 'Invite Farmers',
                      tileIcon: Icons.person_add_outlined),
                  const SizedBox(height: 15),
                  settings(null,
                      tileText: 'Upload Content',
                      tileIcon: Icons.cloud_upload_outlined),
                  const SizedBox(height: 15),
                  settings(null,
                      tileText: 'Customer Support',
                      tileIcon: Icons.headset_mic_outlined),
                  const SizedBox(height: 15),
                  settings(null, tileText: 'Settings', tileIcon: Icons.settings)
                ],
              ),
              const SizedBox(height: 40),
              Container(
                height: 52,
                constraints: const BoxConstraints(maxWidth: 400),
                child: ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    mainAppKey.currentState!.popAndPushNamed(LoginScreen.id);
                  },
                  style: elevatedButtonStyleTwo,
                  child: Text(
                    "Sign Out",
                    style: GoogleFonts.jost(
                        color: Resources.color.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
