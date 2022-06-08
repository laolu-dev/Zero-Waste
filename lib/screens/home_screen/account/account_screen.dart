import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/user_data.dart';
import 'package:zero_waste/widgets/list_tile_widget.dart';

class MyAccount extends StatefulWidget {
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
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Cannot pick: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserAuth>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Top Bar
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.height - 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pushNamed(context, '/Home'),
                        icon: const Icon(Icons.arrow_back_ios,
                            color: headColor, size: 20),
                      ),
                      Text('My Account', style: headerText)
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(38, 16, 38, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //User Display Picture
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              user.getProfile(image!);
                            },
                            child: image != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(1000),
                                    child: Image.file(
                                      image!,
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: hintTextColor,
                                        borderRadius:
                                            BorderRadius.circular(70)),
                                    child: const Icon(
                                      Icons.add_a_photo,
                                      color: primaryColor,
                                    ),
                                  ),
                          ),
                          const SizedBox(width: 25),
                          TextButton(
                            onPressed: () {
                              _showAlertDialog(context);
                            },
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17.5, vertical: 10),
                              primary: white,
                              side: const BorderSide(color: primaryColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            ),
                            child: Text(
                              'Upload Images',
                              style: contentText.copyWith(color: hintTextColor),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 14),
                      //Username and Usertype
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 15),
                          Text(user.name, style: orTextStyle),
                          Text(user.userType, style: labelTextStyle)
                        ],
                      ),
                    ],
                  ),
                ),
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
                const SizedBox(height: 40),
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
