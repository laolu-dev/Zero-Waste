import 'package:flutter/material.dart';
import 'package:zero_waste/core/enums/farmer_type.dart';

class FarmerTypeController extends ChangeNotifier {
  FarmerType _selectedType = FarmerType.cropFarmer;

  FarmerType get selectedType => _selectedType;

  void changeType(FarmerType newType) {
    _selectedType = newType;
    notifyListeners();
  }
}
