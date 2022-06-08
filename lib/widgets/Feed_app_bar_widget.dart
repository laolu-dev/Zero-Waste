import 'package:flutter/material.dart';

class FeedAppBar extends StatelessWidget {
  final Widget? leading;
  final Widget titleWidget;
  final Widget? trailingWidget;
  const FeedAppBar(
      {Key? key,
      required this.titleWidget,
      required this.trailingWidget,
      this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading ??
          GestureDetector(
            onTap: () => Navigator.popAndPushNamed(context, '/Home'),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20.0,
              color: Colors.black,
            ),
          ),
      title: titleWidget,
      trailing: trailingWidget,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
    );
  }
}
