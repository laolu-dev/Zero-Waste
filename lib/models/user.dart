// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Farmer {
  final String? imagePath;
  final String name;
  final String typeOfFarmer;
  final String homeAddress;
  final String state;
  final String phone;
  final String email;
  final List? likedPosts;
  final double? ratings;

  Farmer({
    this.imagePath,
    required this.name,
    required this.typeOfFarmer,
    required this.homeAddress,
    required this.state,
    required this.phone,
    required this.email,
    this.likedPosts,
    this.ratings,
  });
  


  Farmer copyWith({
    String? imagePath,
    String? name,
    String? typeOfFarmer,
    String? homeAddress,
    String? state,
    String? phone,
    String? email,
    List? likedPosts,
    double? ratings,
  }) {
    return Farmer(
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      typeOfFarmer: typeOfFarmer ?? this.typeOfFarmer,
      homeAddress: homeAddress ?? this.homeAddress,
      state: state ?? this.state,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      likedPosts: likedPosts ?? this.likedPosts,
      ratings: ratings ?? this.ratings,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagePath': imagePath,
      'name': name,
      'typeOfFarmer': typeOfFarmer,
      'homeAddress': homeAddress,
      'state': state,
      'phone': phone,
      'email': email,
      'likedPosts': likedPosts,
      'ratings': ratings,
    };
  }

  factory Farmer.fromMap(Map<String, dynamic> map) {
    return Farmer(
      imagePath: map['imagePath'] != null ? map['imagePath'] as String : null,
      name: map['name'] as String,
      typeOfFarmer: map['typeOfFarmer'] as String,
      homeAddress: map['homeAddress'] as String,
      state: map['state'] as String,
      phone: map['phone'] as String,
      email: map['email'] as String,
      likedPosts: map['likedPosts'] != null ? List.castFrom(map['likedPosts']): null,
      ratings: map['ratings'] != null ? map['ratings'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Farmer.fromJson(String source) => Farmer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Farmer(imagePath: $imagePath, name: $name, typeOfFarmer: $typeOfFarmer, homeAddress: $homeAddress, state: $state, phone: $phone, email: $email, likedPosts: $likedPosts, ratings: $ratings)';
  }

  @override
  bool operator ==(covariant Farmer other) {
    if (identical(this, other)) return true;
  
    return 
      other.imagePath == imagePath &&
      other.name == name &&
      other.typeOfFarmer == typeOfFarmer &&
      other.homeAddress == homeAddress &&
      other.state == state &&
      other.phone == phone &&
      other.email == email &&
      other.likedPosts == likedPosts &&
      other.ratings == ratings;
  }

  @override
  int get hashCode {
    return imagePath.hashCode ^
      name.hashCode ^
      typeOfFarmer.hashCode ^
      homeAddress.hashCode ^
      state.hashCode ^
      phone.hashCode ^
      email.hashCode ^
      likedPosts.hashCode ^
      ratings.hashCode;
  }
}
