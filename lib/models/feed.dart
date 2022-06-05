class Feed {
  final String? profileImage;
  final String userName;
  final String userLocation;
  final String postTime;
  final String farmProduction;
  final String weightOfProduct;
  final String pictureOfProduct;
  final int numberOfLikes;
  final bool isOnline;

  Feed(
    this.numberOfLikes, {
    required this.profileImage,
    required this.userName,
    required this.userLocation,
    required this.postTime,
    required this.farmProduction,
    required this.weightOfProduct,
    required this.pictureOfProduct,
    required this.isOnline,
  });
}
