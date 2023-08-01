import 'package:flutter/material.dart';

import '../../../utils/config/res.dart';

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
              color: Resources.color.hintText,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        suffixIcon: IconButton(
          onPressed: () => setState(() => showText = !showText),
          icon: showText
              ? Icon(Icons.visibility_off, color: Resources.color.hintText)
              : Icon(Icons.visibility, color: Resources.color.hintText),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 22),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Resources.color.hintText, width: 10),
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Resources.color.primary),
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        ),
      ),
    );
  }
}
