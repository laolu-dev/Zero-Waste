import 'package:flutter/material.dart';

class SavedPosts extends ChangeNotifier {
  final List _savedPosts = [];

  List get savedPosts => _savedPosts;

  void addPost() {
    
    notifyListeners();
  }
}
