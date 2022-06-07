import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/widgets/notification_widget.dart';

class UserCategories extends StatefulWidget {
  const UserCategories({Key? key}) : super(key: key);

  @override
  State<UserCategories> createState() => _UserCategoriesState();
}

class _UserCategoriesState extends State<UserCategories> {
  Container userCate(String image, String headText, String subHead) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 148, maxWidth: 340),
      decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(headText, style: headerText, softWrap: true),
              Text(subHead, style: contentText, softWrap: true),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Connections');
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(99, 33),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  'Connect',
                  style: contentText.copyWith(
                    color: white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Top Bar
                  SizedBox(
                    height: 38,
                    width: 367,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Home');
                          },
                          icon: const Icon(Icons.arrow_back_ios, size: 20),
                        ),
                        TextField(
                          cursorColor: Colors.green,
                          decoration: InputDecoration(
                            constraints: const BoxConstraints(maxWidth: 251),
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search,
                                    color: Colors.grey)),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.mic_none,
                                    color: Colors.black)),
                            hintText: 'Search for farmers',
                            filled: true,
                            fillColor: const Color(0xffE3FFF7),
                            contentPadding: const EdgeInsets.fromLTRB(
                                20.0, 10.0, 20.0, 10.0),
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffE3FFF7)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22))),
                          ),
                        ),
                        const SizedBox(width: 7),
                        const NotificationWidget()
                      ],
                    ),
                  ),
                  const SizedBox(height: 26.5),
                  userCate(
                    'assets/images/Farmer.png',
                    contentOne,
                    'Stay connected with us \nand get your produce',
                  ),
                  const SizedBox(height: 23),
                  userCate(
                    'assets/images/Farmer-bro2.png',
                    'Black Soldier Fly \nFarmers',
                    'Connect with your farmers.',
                  ),
                  const SizedBox(height: 23),
                  userCate(
                    'assets/images/Farmer-bro.png',
                    'Fish/Poultry \nFarmers',
                    'Stay Connected.',
                  ),
                  const SizedBox(height: 23),
                  userCate(
                    'assets/images/Farmer4.png',
                    contentFour,
                    'Apply as a farm staff and \nworkers today.',
                  ),
                  const SizedBox(height: 23),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
