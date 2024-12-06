class SignUpModel {
  final String message;
  final String? token; // أضف هذا الحقل

  SignUpModel({required this.message, this.token});

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
      message: json['message'],
      token: json['token'], // تحقق أن التوكن يأتي من هذا الحقل في الاستجابة
    );
  }
}
