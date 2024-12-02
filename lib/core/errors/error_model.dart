import 'package:delivery_app/core/api/end_points.dart';

class ErrorModel {
  // final int status;
  final String errorMessage;

  ErrorModel({required this.errorMessage});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      errorMessage: jsonData[ApiKey.errorMessage],
    );
  }
}
