import 'package:flutter/material.dart';

class FeedAppBar extends StatelessWidget {
  final Widget titleWidget;
  final Widget? trailingWidget;
  const FeedAppBar(
      {Key? key, required this.titleWidget, required this.trailingWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child:
            const Icon(Icons.arrow_back_ios, color: Colors.black, size: 25.0),
      ),
      title: titleWidget,
      trailing: trailingWidget,
    );
  }
}
