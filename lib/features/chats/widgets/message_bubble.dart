import 'package:flutter/material.dart';


class MessageBubble extends StatefulWidget {
  final String messageContent;
  final bool isMe;

  const MessageBubble({
    Key? key,
    required this.messageContent,
    required this.isMe,
    // this.isMessage = false,
  }) : super(key: key);

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  // bool _isMessage() => widget.isMessage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width,
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
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    )
                  : const BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
              elevation: 5.0,
              color: widget.isMe ? Colors.green : Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: 
                    Text(
                        widget.messageContent,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: widget.isMe ? Colors.grey[900] : Colors.green,
                        ),
                      )
                    //  ClipRRect(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //     child: Image.network(
                    //       widget.messageContent,
                    //       alignment: Alignment.center,
                    //       fit: BoxFit.fill,
                    //     ),
                    //   ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
