enum FarmerType {
  cropFarmer,
  blackSolderFlyFarmer,
  fishpoultryFarmer,
  manualLabourer
}

extension FarmerTypeString on FarmerType {
  String getFarmerTypeString() {
    switch (this) {
      case FarmerType.cropFarmer:
        return "Crop Farmer";
      case FarmerType.blackSolderFlyFarmer:
        return "Black Solder Fly Farmer";
      case FarmerType.fishpoultryFarmer:
        return "Fish/Poultry Farmer";
      case FarmerType.manualLabourer:
        return "Maual Labourer";
    }
  }

  String toBackendType() {
    switch (this) {
      case FarmerType.cropFarmer:
        return "CROP";
      case FarmerType.blackSolderFlyFarmer:
        return "BLACK_SOLDIER";
      case FarmerType.fishpoultryFarmer:
        return "FISH_POULTRY";
      case FarmerType.manualLabourer:
        return "MANUAL";
    }
  }
}
