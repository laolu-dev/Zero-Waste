import 'package:flutter/material.dart';
import '../../../../core/constants/logger.dart';
import '../../../../core/constants/styles/colors.dart';



class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: AppColors.hintText),
        suffixIcon: GestureDetector(
          onTap: () {
            logger.i('Recording has started');
          },
          child: Icon(Icons.mic_none, color: AppColors.black),
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
