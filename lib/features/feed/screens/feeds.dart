import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../utils/config/res.dart';
import '../../../widgets/notification_widget.dart';
import '../../home/widget/search_text_field.dart';
import '../../../provider/feed_data.dart';
import '../widgets/add_icon.dart';
import '../widgets/feed_info_widget.dart';

class FeedsPage extends StatelessWidget {
  static const id = 'FeedsPage';
  const FeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Resources.color.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Feeds',
          style: GoogleFonts.jost(
              color: Resources.color.black,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 5, right: 10, bottom: 5),
            child: NotificationWidget(),
          )
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: const ChatIcon(),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SearchTextField(),
            ),
            Consumer<FeedData>(
              builder: (BuildContext context, value, Widget? child) {
                return Flexible(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemBuilder: (context, index) {
                      return value.feeds
                          .map((e) => FeedInfoWidget(feed: e))
                          .toList()[index];
                    },
                    itemCount: value.length,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
