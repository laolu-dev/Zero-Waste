// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FeedInfo {
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

  FeedInfo({
    this.profileImage,
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

  FeedInfo copyWith({
    String? profileImage,
    String? userName,
    String? userLocation,
    String? postTime,
    String? farmProduction,
    String? weightOfProduct,
    String? pictureOfProduct,
    String? typeOfFarmer,
    int? numberOfLikes,
    bool? isOnline,
  }) {
    return FeedInfo(
      profileImage: profileImage ?? this.profileImage,
      userName: userName ?? this.userName,
      userLocation: userLocation ?? this.userLocation,
      postTime: postTime ?? this.postTime,
      farmProduction: farmProduction ?? this.farmProduction,
      weightOfProduct: weightOfProduct ?? this.weightOfProduct,
      pictureOfProduct: pictureOfProduct ?? this.pictureOfProduct,
      typeOfFarmer: typeOfFarmer ?? this.typeOfFarmer,
      numberOfLikes: numberOfLikes ?? this.numberOfLikes,
      isOnline: isOnline ?? this.isOnline,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileImage': profileImage,
      'userName': userName,
      'userLocation': userLocation,
      'postTime': postTime,
      'farmProduction': farmProduction,
      'weightOfProduct': weightOfProduct,
      'pictureOfProduct': pictureOfProduct,
      'typeOfFarmer': typeOfFarmer,
      'numberOfLikes': numberOfLikes,
      'isOnline': isOnline,
    };
  }

  factory FeedInfo.fromMap(Map<String, dynamic> map) {
    return FeedInfo(
      profileImage:
          map['profileImage'] != null ? map['profileImage'] as String : null,
      userName: map['userName'] as String,
      userLocation: map['userLocation'] as String,
      postTime: map['postTime'] as String,
      farmProduction: map['farmProduction'] as String,
      weightOfProduct: map['weightOfProduct'] as String,
      pictureOfProduct: map['pictureOfProduct'] as String,
      typeOfFarmer: map['typeOfFarmer'] as String,
      numberOfLikes: map['numberOfLikes'] as int,
      isOnline: map['isOnline'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory FeedInfo.fromJson(String source) =>
      FeedInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FeedInfo(profileImage: $profileImage, userName: $userName, userLocation: $userLocation, postTime: $postTime, farmProduction: $farmProduction, weightOfProduct: $weightOfProduct, pictureOfProduct: $pictureOfProduct, typeOfFarmer: $typeOfFarmer, numberOfLikes: $numberOfLikes, isOnline: $isOnline)';
  }

  @override
  bool operator ==(covariant FeedInfo other) {
    if (identical(this, other)) return true;

    return other.profileImage == profileImage &&
        other.userName == userName &&
        other.userLocation == userLocation &&
        other.postTime == postTime &&
        other.farmProduction == farmProduction &&
        other.weightOfProduct == weightOfProduct &&
        other.pictureOfProduct == pictureOfProduct &&
        other.typeOfFarmer == typeOfFarmer &&
        other.numberOfLikes == numberOfLikes &&
        other.isOnline == isOnline;
  }

  @override
  int get hashCode {
    return profileImage.hashCode ^
        userName.hashCode ^
        userLocation.hashCode ^
        postTime.hashCode ^
        farmProduction.hashCode ^
        weightOfProduct.hashCode ^
        pictureOfProduct.hashCode ^
        typeOfFarmer.hashCode ^
        numberOfLikes.hashCode ^
        isOnline.hashCode;
  }
}
