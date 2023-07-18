import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../shared/res.dart';

class UserInput extends StatefulWidget {
  final String label;
  final TextInputType? type;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatInput;
  final FormFieldValidator<String>? validator;

  const UserInput({
    Key? key,
    required this.label,
    this.type,
    this.controller,
    this.formatInput,
    this.validator,
  }) : super(key: key);

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.type,
      inputFormatters: widget.formatInput,
      decoration: InputDecoration(
        label: Text(
          widget.label,
          style: TextStyle(
              color: Resources.color.tField,
              fontSize: 14,
              fontWeight: FontWeight.w400),
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
