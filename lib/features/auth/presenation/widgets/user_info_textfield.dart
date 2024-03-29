import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:zero_waste/core/constants/styles/colors.dart';

class UserInput extends StatelessWidget {
  final String label;
  final FocusNode? focusNode;
  final TextInputType? type;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatInput;
  final FormFieldValidator<String>? validator;

  const UserInput({
    Key? key,
    required this.label,
    this.type,
    this.focusNode,
    this.controller,
    this.formatInput,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: type,
      inputFormatters: formatInput,
      focusNode: focusNode,
      autofocus: true,
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(
              color: AppColors.hintText,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 22),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintText, width: 10),
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        ),
      ),
    );
  }
}
