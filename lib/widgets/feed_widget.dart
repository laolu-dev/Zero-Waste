import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/providers/feed_data.dart';
import 'package:zero_waste/widgets/customer_user_info.dart';
import 'package:zero_waste/widgets/sub_user_info_widget.dart';

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
                    child: CustomerUserInfo(
                      imageUrl: feed.profileImage,
                      title: SubUserInfo(
                        title: feed.userName,
                        title1TextStyle: const TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                        subtitle1: feed.userLocation,
                        subtitle2: 'Posted at ${feed.postTime}',
                      ),
                      trailingWidget: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            feed.farmProduction,
                            style: const TextStyle(
                                fontFamily: 'Jost',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
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
                  ),
                  const SizedBox(height: 1.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        feed.pictureOfProduct,
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
                              '${feed.numberOfLikes} Like',
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
            );
          },
          itemCount: feedData.length,
        ),
      ),
    );
  }
}
