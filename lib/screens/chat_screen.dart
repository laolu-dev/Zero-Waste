import 'package:flutter/material.dart';

import '../widgets/Feed_app_bar_widget.dart';
import '../widgets/feed_widget.dart';
import '../widgets/notification_widget.dart';
import 'feed_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final textFieldController = TextEditingController();
  String textValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              FeedAppBar(
                titleWidget: Row(
                  children: [
                    const UserAvatar(),
                    const SizedBox(width: 10.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Marthar Something',
                          style: TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 14.0,
                              color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
                trailingWidget: const Icon(Icons.search, size: 32),
              ),
              const Divider(color: Colors.green),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Material(
              elevation: 20.0,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: textFieldController,
                      decoration: const InputDecoration(
                        labelText: 'Message Here',
                        labelStyle: TextStyle(color: Colors.grey),
                        hintText: 'Message Here',
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Colors.green,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                      ),
                      onChanged: (value) => setState(() => textValue = value),
                    ),
                  ),
                  textValue == ''
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(Icons.add, size: 30),
                            SizedBox(width: 5.0),
                            Icon(Icons.emoji_emotions, size: 25),
                            SizedBox(width: 5.0),
                            Icon(Icons.camera_alt, size: 25),
                          ],
                        )
                      : const Icon(Icons.send),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String? userName;
  const UserAvatar({
    Key? key,
    this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: userName == null
          ? const Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              // size: 32,
            )
          : Image.network(userName!),
    );
  }
}
