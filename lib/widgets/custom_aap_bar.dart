import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget titleWidget;
  final Widget? trailingWidget;
  const CustomAppBar({Key? key, required this.titleWidget, this.trailingWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child:
            const Icon(Icons.arrow_back_ios, color: Colors.black, size: 25.0),
      ),
      title: titleWidget,
    );
  }
}
