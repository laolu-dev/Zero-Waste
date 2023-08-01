import 'package:flutter/material.dart';
import '../../../utils/config/res.dart';
import '../../../utils/logger.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: Resources.color.hintText),
        suffixIcon: GestureDetector(
          onTap: () {
            logger.i('Recording has started');
          },
          child: Icon(Icons.mic_none, color: Resources.color.black),
        ),
        hintText: 'Search for farmers',
        filled: true,
        fillColor: const Color(0xffE3FFF7),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }
}
