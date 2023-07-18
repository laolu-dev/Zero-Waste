import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/feed_data.dart';
import '../shared/res.dart';
import '../features/chats/widgets/customer_user_info.dart';
import 'sub_user_info_widget.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedData>(
      builder: (context, feedData, child) => SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemBuilder: (context, index) {
            final feed = feedData.feeds[index];
            return Container(
              height: 240,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 20.0,
                        offset: const Offset(0.0, 0.5)),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  color: Resources.color.white),
              child: Column(
                children: [
                  CustomerUserInfo(
                    imageUrl: feed.profileImage,
                    title: SubUserInfo(
                      title: feed.userName,
                      title1TextStyle: GoogleFonts.jost(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: Resources.color.black),
                      subtitle1: feed.userLocation,
                      subtitle2: 'Posted at ${feed.postTime}',
                    ),
                    trailingWidget: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          feed.farmProduction,
                          style: GoogleFonts.jost(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                              color: Resources.color.black),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          feed.weightOfProduct,
                          style: const TextStyle(
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w900,
                              fontSize: 10.0,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(feed.pictureOfProduct,
                          height: 110,
                          width: double.infinity,
                          alignment: Alignment.center,
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(color: Colors.grey, thickness: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          const Icon(Icons.thumb_up_outlined,
                              color: Colors.green),
                          const SizedBox(width: 5.0),
                          Text(
                            'Comment',
                            style: GoogleFonts.jost(
                                fontSize: 11.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.green),
                          ),
                        ]),
                        Row(children: [
                          const Icon(Icons.thumb_up, color: Colors.grey),
                          const SizedBox(width: 5.0),
                          Text(
                            '${feed.numberOfLikes} Like',
                            style: GoogleFonts.jost(
                                fontSize: 11.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: feedData.length,
        ),
      ),
    );
  }
}
