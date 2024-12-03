import 'package:bloc/bloc.dart';
import 'package:delivery_app/core/api/api_consumer.dart';
import 'package:delivery_app/core/api/dio_consumer.dart';
import 'package:delivery_app/core/api/end_points.dart';
import 'package:delivery_app/core/database/cache/cache_helper.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/features/auth/presentation/models/signin_model.dart';
import 'package:delivery_app/features/auth/presentation/models/signup_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;

  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();

  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();

  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //Profile Pic
  XFile? profilePic;
  //Sign up name
  TextEditingController signUpName = TextEditingController();
  //Sign up phone number
  TextEditingController signUpPhoneNumber = TextEditingController();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();

  SignInModel? user;

  //  uploadProfilePic(XFile image) {
  //   profilePic = image;
  //   emit(UploadProfilePic());
  // }

  signUp() async {
    try {
      emit(SignUpLoading());
      final response = await api.post(
        EndPoint.signUp,
        isFromData: true,
        data: {
          ApiKey.name: signUpName.text,
          ApiKey.phone: signUpPhoneNumber.text,
          ApiKey.email: signUpEmail.text,
          ApiKey.password: signUpPassword.text,
          ApiKey.confirmPassword: confirmPassword.text,
          // ApiKey.location:
          //     '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
          // ApiKey.profilePic: await uploadImageToAPI(profilePic!)
        },
      );
      final signUPModel = SignUpModel.fromJson(response);
      emit(SignUpSuccess(message: signUPModel.message));
    } on ServerException catch (e) {
      emit(SignUpFailure(errMessage: e.errModel.errorMessage));
    }
  }

  // التحديثات الممكنة للقيم
  void updateEmail(String value) {
    signInEmail.text = value;
  }

  void updatePassword(String value) {
    signInPassword.text = value;
  }

  signIn({required String email, required String password}) async {
    try {
      emit(SignInLoading());
      final response = await api.post(
        'http://127.0.0.1:8000/api/login',
        data: {
          ApiKey.identifier: email, // استخدم القيمة المرسلة
          ApiKey.password: password, // استخدم القيمة المرسلة
        },
      );
      print(response.toString());
      user = SignInModel.fromJson(response);

      // التحقق من صحة التوكن
      if (JwtDecoder.isExpired(user!.token)) {
        throw Exception("Token is expired");
      }

      final decodedToken = JwtDecoder.decode(user!.token);
      await CashHelper().saveData(key: ApiKey.token, value: user!.token);
      await CashHelper()
          .saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      print('gggggggggggggg');
      emit(SignInSuccess());
    } on ServerException catch (e) {
      print("Server Exception: ${e.errModel.errorMessage}");
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    } catch (e, stacktrace) {
      print("Error: $e");
      print("Stacktrace: $stacktrace");
      emit(SignInFailure(errMessage: "Unexpected error occurred"));
    }
  }

  void testApi() async {
    final dio = Dio();
    final api = DioConsumer(dio: dio);

    try {
      final response = await api.post(
        'http://127.0.0.1:8000/api/login',
        data: {'email': 'test@example.com', 'password': '123456'},
      );
      print('Response: $response');
    } catch (e) {
      print('Error: $e');
    }
  }
}
