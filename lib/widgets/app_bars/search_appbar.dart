import 'package:flutter/material.dart';
import 'package:zero_waste/widgets/notification_widget.dart';
import 'package:zero_waste/widgets/search_text_field.dart';

import '../../res/res.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Resources.color.black),
        ),
        const Expanded(
          child: SearchTextField(width: 250),
        ),
        const SizedBox(width: 10),
        const NotificationWidget(),
      ],
    );
  }
}
