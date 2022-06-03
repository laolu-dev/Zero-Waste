import 'package:flutter/material.dart';

import 'message_bubble.dart';

// class MessagesStream extends StatelessWidget {
//   const MessagesStream({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
//       stream: _fireStore.collection('messages').snapshots(),
//       builder: (context, snapshot) {
//         List<MessageBubble> messageBubbles = [];
//         if (!snapshot.hasData) {
//           return const Center(
//             child: CircularProgressIndicator(
//               color: Colors.lightBlueAccent,
//             ),
//           );
//         }
//         //reverse at the end of this variable reverses the order of the data gotten
//         final messages = snapshot.data?.docs.reversed;
//         for (var message in messages!) {
//           final messageText = message.data()['text'];
//           final messageSender = message.data()['sender'];
//
//           final currentUser = loggInUser!.email;
//           final messageBubble = MessageBubble(
//               sender: messageSender,
//               text: messageText,
//               isMe: currentUser == messageSender);
//           messageBubbles.add(messageBubble);
//         }
//         return Expanded(
//           child: ListView(
//             reverse: true,
//             padding:
//             const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
//             children: messageBubbles,
//           ),
//         );
//       },
//     );
//   }
// }
