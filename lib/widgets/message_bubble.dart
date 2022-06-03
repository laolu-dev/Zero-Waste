import 'package:flutter/material.dart';
import '../utils/user_preferences.dart';

class MessageBubble extends StatefulWidget {
  UserPreferences sender;
  String messageContent;
  bool isMe;
  bool isMessage = false;
  MessageBubble({
    Key? key,
    required this.sender,
    required this.messageContent,
    required this.isMe,
    required this.isMessage,
  }) : super(key: key);

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  bool _isMessage() => widget.isMessage = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:
              widget.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Material(
              borderRadius: widget.isMe
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0))
                  : const BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
              elevation: 5.0,
              color: widget.isMe ? Colors.green : Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: _isMessage()
                    ? Text(
                        widget.messageContent,
                        style: TextStyle(
                            fontSize: 15.0,
                            color:
                                widget.isMe ? Colors.grey[900] : Colors.green),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            widget.messageContent,
                            height: 130.0,
                            width: double.infinity,
                            alignment: Alignment.center,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
