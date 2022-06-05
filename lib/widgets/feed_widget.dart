import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/models/feed_data.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({Key? key, required this.feed}) : super(key: key);

  final List<Feed> feed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        // itemBuilder: (context, index) {
        //   return Card(
        //     elevation: 3,
        //     shape: const RoundedRectangleBorder(
        //         borderRadius: BorderRadius.all(Radius.circular(10))),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         ListTile(
        //           leading: const Icon(Icons.account_circle),
        //           title: const Text('Name'),
        //           subtitle: Wrap(
        //             direction: Axis.vertical,
        //             children: const [
        //               Text('Lagos, Nigeria'),
        //               Text('Posted at 8:06am')
        //             ],
        //           ),
        //           trailing: Wrap(
        //             direction: Axis.vertical,
        //             children: const [Text('Grains'), Text('1kg')],
        //           ),
        //         ),
        //         const SizedBox(height: 8),
        //         Container(
        //           constraints:
        //               const BoxConstraints(maxHeight: 88, maxWidth: 296),
        //           decoration: BoxDecoration(
        //               border: Border.all(color: Colors.transparent),
        //               borderRadius:
        //                   const BorderRadius.all(Radius.circular(10))),
        //           child: Image.asset('assets/images/background.jpeg'),
        //         ),
        //         const SizedBox(height: 9),
        //         const Divider(thickness: 2, indent: 20, endIndent: 20),
        //         Padding(
        //           padding: const EdgeInsets.only(left: 20, right: 20),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               GestureDetector(
        //                 onTap: () {},
        //                 child: Wrap(
        //                   children: [
        //                     Stack(
        //                       children: [
        //                         Icon(Icons.thumb_up, color: primaryColor)
        //                       ],
        //                     ),
        //                     const Text('Comment'),
        //                   ],
        //                 ),
        //               ),
        //               GestureDetector(
        //                 onTap: () {},
        //                 child: Wrap(
        //                   children: [
        //                     Icon(Icons.thumb_up, color: hintTextColor),
        //                     const Text('Likes'),
        //                   ],
        //                 ),
        //               )
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   );
        // },
        itemBuilder: (context, index) => Container(
          height: 198,
          width: 325,
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20.0,
                offset: const Offset(0.0, 0.5),
              )
            ],
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: feed[index].profileImage == null
                        ? const Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                            // size: 32,
                          )
                        : Image.network(feed[index].pictureOfProduct),
                  ),
                  title: Text(
                    feed[index].userName,
                    style: const TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        feed[index].userLocation,
                        style: const TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 10.0,
                            color: Colors.black),
                      ),
                      Text(
                        'Posted at ${feed[index].postTime}',
                        style: const TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 10.0,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        feed[index].farmProduction,
                        style: const TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        feed[index].weightOfProduct,
                        style: const TextStyle(
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w900,
                            fontSize: 10.0,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 1.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    feed[index].pictureOfProduct,
                    height: 130.0,
                    width: double.infinity,
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 1.0),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: const [
                            Icon(
                              Icons.thumb_up_outlined,
                              color: Colors.green,
                            ),
                            Positioned(
                              right: 16.0,
                              bottom: 18,
                              child: Icon(
                                Icons.add,
                                size: 9.0,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 5.0),
                        const Text(
                          'Comment',
                          style: TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.thumb_up,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5.0),
                        Text(
                          '${feed[index].numberOfLikes} Like',
                          style: const TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 11.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        itemCount: feed.length,
      ),
    );
  }
}

class CustomUserInfo extends StatelessWidget {
  final String? imageUrl;
  final String userName;
  final Widget subTitle;
  final Widget? trailingWidget;
  const CustomUserInfo({
    Key? key,
    this.imageUrl,
    required this.userName,
    required this.subTitle,
    this.trailingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        child: imageUrl == null
            ? const Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                // size: 32,
              )
            : Image.network(imageUrl!),
      ),
      title: Text(
        userName,
        style: const TextStyle(
            fontFamily: 'Jost',
            fontSize: 16.0,
            fontWeight: FontWeight.w900,
            color: Colors.black),
      ),
      subtitle: subTitle,
      trailing: trailingWidget,
    );
  }
}
