import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/widgets/profile_widget.dart';
import '../../../constants/constant.dart';
import '../../../providers/user_data.dart';

class ProfileAccount extends StatefulWidget {
  static const id = 'ProfileAccount';

  const ProfileAccount({Key? key}) : super(key: key);

  @override
  State<ProfileAccount> createState() => _ProfileAccountState();
}

class _ProfileAccountState extends State<ProfileAccount> {
// <<<<<<< feeds_section
//   XFile? _image;
//   final ImagePicker _picker = ImagePicker();

//   Future getImage() async {
//     XFile? image;
//     image = await _picker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       _image = image;
//     });
//   }

// =======
// >>>>>>> main
  Container userInfo(BuildContext context) {
    final user = Provider.of<UserAuth>(context);
    return Container(
      width: 327,
      height: 300,
      padding: const EdgeInsets.only(left: 24, right: 24, top: 0),
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Expanded(
        child: Container(
          padding: const EdgeInsets.all(0),
          width: 278,
          height: 185,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.file(
                    user.profileImage!,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(user.name),
              const SizedBox(height: 2),
              Text(user.userType),
              const SizedBox(height: 2),
              Text('${user.state} , ${user.address}'),
              const SizedBox(height: 16),
              Wrap(
                spacing: 17,
                children: [
                  userPopularity(5, 'Followers'),
                  userPopularity(10, 'Following'),
                  userPopularity(15, 'Posts'),
                  userPopularity(20, 'Comments'),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 66.5, vertical: 10),
                  primary: profileButtonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  textStyle: contentText.copyWith(
                      color: white, fontWeight: FontWeight.w500),
                ),
                child: const Text('Edit Profile'),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/MyAccount');
                          },
                          icon: Icon(Icons.navigate_before)),
                      Text(
                        'Profile',
                        style: headerText,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
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
