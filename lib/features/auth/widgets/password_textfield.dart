import 'package:flutter/material.dart';

import '../../../../shared/res.dart';

class PasswordInput extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  const PasswordInput({
    Key? key,
    required this.label,
    this.controller,
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
      decoration: InputDecoration(
        label: Text(
          widget.label,
          style: TextStyle(
              color: Resources.color.tField,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        suffixIcon: IconButton(
          onPressed: () => setState(() => showText = !showText),
          icon: showText
              ? Icon(Icons.visibility_off, color: Resources.color.tField)
              : Icon(Icons.visibility, color: Resources.color.tField),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 22),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Resources.color.tField, width: 10),
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
