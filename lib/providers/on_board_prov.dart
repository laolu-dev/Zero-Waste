import 'package:flutter/material.dart';

class OnBoardingProvider extends ChangeNotifier {
  final PageController _controller = PageController();
  bool _finalPage = true;

  bool get finalPage => _finalPage;
  get controller => _controller;

  isFirst() {
    _controller.jumpToPage(2);
    notifyListeners();
  }

  onLastPage() {
    _finalPage = !_finalPage;
    notifyListeners();
  }
}
