import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/constants/constant.dart';
import 'package:zero_waste/providers/signup_provider.dart';

class TextFields extends StatelessWidget {
  const TextFields(
      {Key? key,
      required this.label,
      required this.showText,
      required this.phoneField})
      : super(key: key);
  final String label;
  final bool showText;
  final bool phoneField;

  Widget showVisibilityEye(BuildContext context) {
    final showPasswordText = Provider.of<SignUp>(context);
    return IconButton(
      onPressed: () {
        showPasswordText.showPassword();
        showPasswordText.textShow();
      },
      icon: showPasswordText.visiblePassword
          ? const Icon(Icons.visibility, color: hintColor)
          : const Icon(Icons.visibility_off, color: hintColor),
    );
  }

  InputDecoration formFieldDecoration(bool showIcon, String header, context) {
    return InputDecoration(
      suffixIcon: showIcon ? showVisibilityEye(context) : null,
      contentPadding: const EdgeInsets.only(left: 25),
      labelStyle: labelTextStyle,
      labelText: header,
      border: const OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromRGBO(226, 226, 226, 1), width: 10),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorGreen),
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final obscureText = Provider.of<SignUp>(context);
    final bool textDown = obscureText.obscureText;
    return TextFormField(
      keyboardType: phoneField ? TextInputType.phone : TextInputType.text,
      cursorColor: hintColor,
      obscureText: textDown,
      decoration: formFieldDecoration(showText, label, context),
    );
  }
}
