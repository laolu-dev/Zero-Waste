class Farmer {
  String? imagePath;
  String name;
  String typeOfFarmer;
  String address;
  String state;
  String phone;
  String email;

  Farmer({
    required this.name,
    required this.phone,
    required this.address,
    required this.state,
    required this.typeOfFarmer,
    this.imagePath,
    required this.email,
  });

  factory Farmer.fromMap(Map<String, dynamic> farmerData) {
    return Farmer(
      name: farmerData['name'],
      phone: farmerData['phone'],
      address: farmerData['address'],
      state: farmerData['state'],
      typeOfFarmer: farmerData['typeOfFarmer'],
      imagePath: farmerData['imagePath'],
      email: farmerData['email'],
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
    result.addAll({
      'name': name,
      'phone': phone,
      'address': address,
      'state': state,
      'typeOfFarmer': typeOfFarmer,
      'imagePath': imagePath,
      'email': email,
    });
    return result;
  }
}
