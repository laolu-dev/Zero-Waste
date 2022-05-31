
import 'package:flutter/material.dart';
import 'package:zero_waste/constants/constant.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: inputDecoration(labelText: 'Full Name'),
    );
  }
}