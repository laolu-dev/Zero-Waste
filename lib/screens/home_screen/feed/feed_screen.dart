import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/config/appTheme.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zero_waste/widgets/feed_widget.dart';
import '../../../providers/feed_data.dart';
import '../../../widgets/Feed_app_bar_widget.dart';
import '../../../widgets/add_icon.dart';
import '../../../widgets/chat_icon.dart';
import '../../../widgets/notification_widget.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color textFieldColor = HexColor('#E3FFF7');
    return Consumer<FeedData>(
      builder: (context, feedData, child) => SafeArea(
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.startDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(right: 33.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AddIcon(alignTextToRight: true, isActive: true),
                ChatIcon(isActive: true),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: FeedAppBar(
                    titleWidget: Text(
                      'Feeds',
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    trailingWidget: NotificationWidget(),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 49),
                  child: TextField(
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search, color: Colors.grey)),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.mic_none, color: Colors.black)),
                      hintText: 'Search for farmers',
                      filled: true,
                      fillColor: const Color(0xffE3FFF7),
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                const FeedWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
