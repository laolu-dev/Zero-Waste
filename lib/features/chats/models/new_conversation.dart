// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NewConnection {
  final String name;
  final String profileUrl;
  final String farmerType;
  final String location;
  
  NewConnection({
    required this.name,
    required this.profileUrl,
    required this.farmerType,
    required this.location,
  });
  
  NewConnection copyWith({
    String? name,
    String? profileUrl,
    String? farmerType,
    String? location,
  }) {
    return NewConnection(
      name: name ?? this.name,
      profileUrl: profileUrl ?? this.profileUrl,
      farmerType: farmerType ?? this.farmerType,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'profileUrl': profileUrl,
      'farmerType': farmerType,
      'location': location,
    };
  }

  factory NewConnection.fromMap(Map<String, dynamic> map) {
    return NewConnection(
      name: map['name'] as String,
      profileUrl: map['profileUrl'] as String,
      farmerType: map['farmerType'] as String,
      location: map['location'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewConnection.fromJson(String source) => NewConnection.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'NewConnection(name: $name, profileUrl: $profileUrl, farmerType: $farmerType, location: $location)';
  }

  @override
  bool operator ==(covariant NewConnection other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.profileUrl == profileUrl &&
      other.farmerType == farmerType &&
      other.location == location;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      profileUrl.hashCode ^
      farmerType.hashCode ^
      location.hashCode;
  }
}
