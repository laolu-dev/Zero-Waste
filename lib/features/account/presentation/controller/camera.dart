import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/constants/logger.dart';



class Camera extends ChangeNotifier {
  File? _profileImage;

  File? get profileImage => _profileImage;

  Future getImage(ImageSource src) async {
    try {
      final ImagePicker picker = ImagePicker();
      var image = await picker.pickImage(source: src);
      _profileImage = File(image!.path);
      notifyListeners();
    } catch (e) {
      logger.e(e);
    }
  }
}
