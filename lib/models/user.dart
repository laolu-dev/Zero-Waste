// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Farmer {
  String? imagePath;
  String name;
  String typeOfFarmer;
  String homeAddress;
  String state;
  String phone;
  String email;

  Farmer({
    this.imagePath,
    required this.name,
    required this.typeOfFarmer,
    required this.homeAddress,
    required this.state,
    required this.phone,
    required this.email,
  });

  Farmer copyWith({
    String? imagePath,
    String? name,
    String? typeOfFarmer,
    String? homeAddress,
    String? state,
    String? phone,
    String? email,
  }) {
    return Farmer(
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      typeOfFarmer: typeOfFarmer ?? this.typeOfFarmer,
      homeAddress: homeAddress ?? this.homeAddress,
      state: state ?? this.state,
      phone: phone ?? this.phone,
      email: email ?? this.email,
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
    );
  }

  String toJson() => json.encode(toMap());

  factory Farmer.fromJson(String source) => Farmer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Farmer(imagePath: $imagePath, name: $name, typeOfFarmer: $typeOfFarmer, homeAddress: $homeAddress, state: $state, phone: $phone, email: $email)';
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
      other.email == email;
  }

  @override
  int get hashCode {
    return imagePath.hashCode ^
      name.hashCode ^
      typeOfFarmer.hashCode ^
      homeAddress.hashCode ^
      state.hashCode ^
      phone.hashCode ^
      email.hashCode;
  }
}
