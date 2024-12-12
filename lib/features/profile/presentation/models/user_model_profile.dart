class UserModel {
  final int id;
  final String name;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String? img;

  UserModel({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    this.img,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      lastName: json['lastName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      img: json['img'],
    );
  }
}
