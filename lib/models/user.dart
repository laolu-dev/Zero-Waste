 import 'dart:convert';
class Farmer {
  String username;
  String email;
  String? password;
  String phoneNumber;
  String state;
  String homeAddress;
  String farmerType;

  Farmer({
    required this.username,
    required this.email,
   this.password,
    required this.phoneNumber,
    required this.state,
    required this.homeAddress,
    required this.farmerType,
  });

  Farmer copyWith({
    String? username,
    String? email,
    String? password,
    String? phoneNumber,
    String? state,
    String? homeAddress,
    String? farmerType,
  }) {
    return Farmer(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      state: state ?? this.state,
      homeAddress: homeAddress ?? this.homeAddress,
      farmerType: farmerType ?? this.farmerType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'state': state,
      'homeAddress': homeAddress,
      'farmerType': farmerType,
    };
  }

  factory Farmer.fromMap(Map<String, dynamic> map) {
    return Farmer(
      username: map['username'] as String,
      email: map['email'] as String,
      password: map['password'] as String?,
      phoneNumber: map['phoneNumber'] as String,
      state: map['state'] as String,
      homeAddress: map['homeAddress'] as String,
      farmerType: map['farmerType'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Farmer.fromJson(String source) => Farmer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Farmer(username: $username, email: $email, password: $password, phoneNumber: $phoneNumber, state: $state, homeAddress: $homeAddress, farmerType: $farmerType)';
  }

  @override
  bool operator ==(covariant Farmer other) {
    if (identical(this, other)) return true;
  
    return 
      other.username == username &&
      other.email == email &&
      other.password == password &&
      other.phoneNumber == phoneNumber &&
      other.state == state &&
      other.homeAddress == homeAddress &&
      other.farmerType == farmerType;
  }

  @override
  int get hashCode {
    return username.hashCode ^
      email.hashCode ^
      password.hashCode ^
      phoneNumber.hashCode ^
      state.hashCode ^
      homeAddress.hashCode ^
      farmerType.hashCode;
  }
}
