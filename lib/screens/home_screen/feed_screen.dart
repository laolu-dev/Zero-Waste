import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zero_waste/widgets/feed_widget.dart';

import '../../models/feed_data.dart';

import 'package:ionicons/ionicons.dart';
import '../chat_screen.dart';
// import '../models/feed_data.dart';
// import '../widgets/Feed_app_bar_widget.dart';
// import '../widgets/notification_widget.dart';
// import 'chat_screen.dart';

class FeedsPage extends StatelessWidget {
  FeedsPage({Key? key}) : super(key: key);
  final List<Feed> feeds = [
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
    Feed(0,
        profileImage: null,
        userName: 'Manoel Haim',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU'),
  ];

  @override
  Widget build(BuildContext context) {
    final Color textFieldColor = HexColor('#E3FFF7');
    return Scaffold();

//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 10.0),
//                 child: ListTile(
//                   leading: const Icon(
//                     Icons.arrow_back_ios,))))))
//
//       // floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.only(right: 33.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: const [
//                 FloatingActionButton(
//                   heroTag: null,
//                   backgroundColor: Colors.grey,
//                   onPressed: null,
//                   child: Icon(Icons.add, size: 45),
//                 ),
//                 SizedBox(width: 5.0),
//                 Text(
//                   'New Conversation',
//                   style: TextStyle(
//                     fontFamily: 'Jost',
//                     fontSize: 14.0,
//                     color: Colors.grey,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 const Text(
//                   'Chats',
//                   style: TextStyle(
//                     color: Colors.green,
//                     fontFamily: 'Jost',
//                     fontSize: 14.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(width: 5.0),
//                 GestureDetector(
//                   onTap: () => Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => const ChatScreen())),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 20.0,
//                         )
//                       ],
//                     ),
//                     child: Image.asset(
//                       'assets/images/chat_icon.png',
//                       color: Colors.green,
//                       height: 51.99,
//                       width: 55,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//       // body: SingleChildScrollView(
//       //   child: Column(
//       //     children: [
//       //       const Padding(
//       //         padding: EdgeInsets.only(right: 10.0),
//       //         child: FeedAppBar(
//       //           titleWidget: Text(
//       //             'Feeds',
//       //             style: TextStyle(
//       //               fontFamily: 'Jost',
//       //               fontSize: 20.0,
//       //               fontWeight: FontWeight.w900,
//       //
//       //               color: Colors.black,
//       //               size: 25.0,
//       //             ),
//       //
//       //             title: const Text(
//       //               'Feeds',
//       //               style: TextStyle(
//       //                 fontFamily: 'Jost',
//       //                 fontSize: 20.0,
//       //                 fontWeight: FontWeight.w900,
//       //                 color: Colors.black,
//       //               ),
//       //             ),
//       //             trailing: Container(
//       //               height: 38.0,
//       //               width: 38.0,
//       //               decoration: BoxDecoration(
//       //                 borderRadius: BorderRadius.circular(50.0),
//       //                 border: Border.all(color: primaryColor),
//       //               ),
//       //               child: Center(
//       //                 child: Stack(
//       //                   children: const [
//       //                     Icon(
//       //                       Icons.notifications_outlined,
//       //                       color: Colors.black,
//       //                     ),
//       //                     Positioned(
//       //                       left: 16.0,
//       //                       child: Icon(
//       //                         Icons.brightness_1,
//       //                         size: 9.0,
//       //                         color: Colors.red,
//       //                       ),
//       //                     ),
//       //                   ],
//       //                 ),
//       //               ),
//       //             ),
//       //           ),
//       //
//       //           ),
//       //           trailingWidget: NotificationWidget(),
//       //
//       //         ),
//               const SizedBox(height: 10.0),
//               Container(
//                 margin: const EdgeInsets.only(left: 20.0, right: 20.0),
//                 padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.green,
//                   ),
//                   borderRadius: BorderRadius.circular(100.0),
//                   color: textFieldColor,
//                 ),
//                 child: TextField(
//                   cursorColor: Colors.green,
//                   decoration: InputDecoration(
//                       icon: const Icon(
//                         Icons.search,
//                         color: Colors.green,
//                       ),
//                       // labelText: ,
//                       hintText: 'Search for farmers',
//                       fillColor: textFieldColor,
//                       labelStyle: const TextStyle(
//                         color: Colors.grey,
//                       ),
//                       contentPadding:
//                           const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(
//                               color: Colors.green.shade50,
//                               style: BorderStyle.none))),
//                 ),
//               ),
//               const SizedBox(height: 10.0),
//               FeedWidget(feed: feeds),
//             ],
//           ),
//     )
//     );
//   }
  }
}
