class Feed {
  final String? profileImage;
  final String userName;
  final String userLocation;
  final String postTime;
  final String farmProduction;
  final String weightOfProduct;
  final String pictureOfProduct;
  final String typeOfFarmer;
  final int numberOfLikes;
  final bool isOnline;

  Feed({
    required this.profileImage,
    required this.userName,
    required this.userLocation,
    required this.postTime,
    required this.farmProduction,
    required this.weightOfProduct,
    required this.pictureOfProduct,
    required this.typeOfFarmer,
    required this.numberOfLikes,
    required this.isOnline,
  });
}
