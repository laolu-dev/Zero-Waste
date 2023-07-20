import 'package:flutter/material.dart';

class ProfileImageClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    Rect imageShape = Rect.fromCenter(center: center, width: 60, height: 60);
    return imageShape;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
