import 'package:flutter/material.dart';

class FeedAppBar extends StatelessWidget {
  final Widget? leading;
  final Widget titleWidget;
  final Widget? trailingWidget;
  final String? location;
  const FeedAppBar({
    Key? key,
    required this.titleWidget,
    required this.trailingWidget,
    required this.location,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading ??
          GestureDetector(
            onTap: () => Navigator.popAndPushNamed(context, location!),
            child: const Icon(Icons.arrow_back_ios,
                color: Colors.black, size: 20.0),
          ),
      title: titleWidget,
      trailing: trailingWidget,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
    );
  }
}
