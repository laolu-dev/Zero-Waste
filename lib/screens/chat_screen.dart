import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/constants/constant.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          shadowColor: colorGreen,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          leading: Padding(
            padding: const EdgeInsets.only(left: 020.0),
            child: Icon(Icons.chevron_left, color: blackColor),
          ),
          title: Row(
            children: [
              Image.asset("images/userChat.png", width: 36, height: 36),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Martha Dubiecki",
                    style: userCtextStyle,
                  ),
                  Text(
                    "Online",
                    style: statusStyle,
                  )
                ],
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 26.0),
              child: Icon(
                Icons.search,
                color: blackColor,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/chatImg6.png",
                          width: 286, height: 209),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 19, bottom: 16, left: 31, right: 13),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(35),
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35),
                          ),
                          color: colorGreen,
                        ),
                        child: Text(
                          "Can we meet up to exchange this",
                          style: chatTextStyle,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(child: SizedBox(height: 1)),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                    color: inputWhite,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: hintColor, offset: Offset(1, 1), blurRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "100% effective, with fast..."),
                    )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.add),
                          Icon(Icons.emoji_emotions),
                          Icon(Icons.photo_camera)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
