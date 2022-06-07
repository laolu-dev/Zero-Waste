import 'package:flutter/material.dart';

class HomeNav extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void setIndex(int value) {
    _index = value;
  }
}
