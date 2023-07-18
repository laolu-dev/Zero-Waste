import 'package:flutter/material.dart';
import '../notification_widget.dart';
import '../../features/home/widget/search_text_field.dart';

import '../../shared/res.dart';



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
