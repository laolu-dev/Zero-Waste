import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/app_bars/page_appbar.dart';
import '../../widgets/feed_widget.dart';
import '../home/widget/search_text_field.dart';
import '../../providers/feed_data.dart';
import '../../widgets/add_icon.dart';

class FeedsPage extends StatelessWidget {
  static const id = 'FeedsPage';
  const FeedsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const ChatIcon(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: [
                const PageBar(pageTitle: 'Feeds'),
                const SizedBox(height: 10.0),
                const SearchTextField(width: double.infinity),
                const SizedBox(height: 10.0),
                Consumer<FeedData>(
                  builder: (BuildContext context, value, Widget? child) =>
                      const FeedWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
