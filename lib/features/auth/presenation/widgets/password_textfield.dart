import 'package:flutter/material.dart';

import '../../../../core/constants/styles/colors.dart';

class PasswordInput extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  const PasswordInput({
    Key? key,
    required this.label,
    this.controller,
    this.focusNode,
    this.validator,
  }) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool showText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: showText,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        label: Text(
          widget.label,
          style: TextStyle(
              color: AppColors.hintText,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        suffixIcon: IconButton(
          onPressed: () => setState(() => showText = !showText),
          icon: showText
              ? Icon(Icons.visibility_off, color: AppColors.hintText)
              : Icon(Icons.visibility, color: AppColors.hintText),
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
