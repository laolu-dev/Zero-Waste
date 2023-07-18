import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../providers/product_data.dart';
import '../../../shared/res.dart';
import '../../../widgets/app_bars/account_appbar.dart';
import '../../../widgets/profile_widget.dart';
import '../../../constants/constant.dart';
import '../../../models/user.dart';
import '../../../features/auth/auth_state/user_data.dart';

class ProfileAccount extends StatefulWidget {
  static const id = 'ProfileAccount';
  const ProfileAccount({Key? key}) : super(key: key);

  @override
  State<ProfileAccount> createState() => _ProfileAccountState();
}

class _ProfileAccountState extends State<ProfileAccount> {
  Container userInfo(BuildContext context) {
    final profile = Provider.of<UserAuth>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Expanded(
        child: Container(
          padding: const EdgeInsets.all(0),
          width: 278,
          height: 185,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              profile.profileImage != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.file(
                        profile.profileImage!,
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
                          borderRadius: BorderRadius.circular(70)),
                      child: const Icon(
                        Icons.add_a_photo,
                        color: primary,
                      ),
                    ),
              // FutureBuilder<Farmer?>(
              //   future: profile.farmer,
              //   builder: (BuildContext context, snapshot) {
              //     if (snapshot.hasData) {
              //       final user = snapshot.data;
              //       return Text(
              //         user!.name,
              //         style: GoogleFonts.jost(
              //             fontSize: 16,
              //             fontWeight: FontWeight.w600,
              //             color: Resources.color.white),
              //       );
              //     } else {
              //       return const Text('');
              //     }
              //   },
              // ),
              const SizedBox(height: 2),
              Text(
                profile.userForm.typeOfFarmer,
                style: GoogleFonts.jost(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Resources.color.white),
              ),
              const SizedBox(height: 2),
              // FutureBuilder<Farmer?>(
              //   future: profile.farmer,
              //   builder: (BuildContext context, snapshot) {
              //     if (snapshot.hasData) {
              //       final user = snapshot.data;
              //       return Text(
              //         '${user!.state}, ${user.homeAddress}',
              //         style: GoogleFonts.jost(
              //             fontSize: 14,
              //             fontWeight: FontWeight.w400,
              //             color: Resources.color.white),
              //       );
              //     } else {
              //       return const Text('');
              //     }
              //   },
              // ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 17,
                children: [
                  userPopularity('18k', 'Followers'),
                  userPopularity('11k', 'Following'),
                  userPopularity('180k', 'Posts'),
                  userPopularity('180.5k', 'Comments'),
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

  ElevatedButton profileButtons(String buttonText, Color btnColor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        primary: btnColor,
      ),
      child: Text(
        buttonText,
        style: GoogleFonts.jost(
            fontSize: 20,
            color: Resources.color.white,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                const AccountBar(title: 'Profile'),
                const SizedBox(height: 10),
                userInfo(context),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          primary: Resources.color.primary),
                      child: Text(
                        'My Posts',
                        style: GoogleFonts.jost(
                            fontSize: 20,
                            color: Resources.color.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          primary: const Color.fromRGBO(233, 233, 233, 1)),
                      child: Text(
                        'Saved Posts',
                        style: GoogleFonts.jost(
                            fontSize: 16,
                            color: Resources.color.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Consumer<ProductData>(
                    builder: (context, userPosts, child) => GridView.builder(
                      shrinkWrap: true,
                      itemCount: userPosts.products.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 24,
                              crossAxisSpacing: 18),
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          child: Image.network(
                              userPosts.products[index].productImage),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
