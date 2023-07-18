import 'package:flutter/material.dart';
import '../shared/res.dart';


class SearchTextField extends StatelessWidget {
  final double width;
  const SearchTextField({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        constraints: BoxConstraints(maxWidth: width),
        prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Resources.color.tField)),
        suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic_none, color: Resources.color.black)),
        hintText: 'Search for farmers',
        filled: true,
        fillColor: const Color(0xffE3FFF7),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
      ),
    );
  }
}
