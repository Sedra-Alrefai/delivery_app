import 'package:bloc/bloc.dart';
import 'package:delivery_app/core/api/api_consumer.dart';
import 'package:delivery_app/core/api/end_points.dart';
import 'package:delivery_app/core/database/cache/cache_helper.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/features/auth/presentation/models/signin_model.dart';
import 'package:delivery_app/features/auth/presentation/models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;

  // Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();

  GlobalKey<FormState> signUpFormKey = GlobalKey();
  // Profile Pic
  XFile? profilePic;
  // Sign up first name
  TextEditingController signUpFirstName = TextEditingController();

  TextEditingController signUpLastName = TextEditingController();

  // Sign up phone number
  TextEditingController signUpPhoneNumber = TextEditingController();
  // Sign up email
  TextEditingController signUpEmail = TextEditingController();
  // Sign up password
  TextEditingController signUpPassword = TextEditingController();
  // Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();

  SignInModel? user;

  signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String phoneNumber, // إضافة رقم الهاتف
  }) async {
    try {
      emit(SignUpLoading());

      // إرسال طلب تسجيل المستخدم
      final response = await api.post(
        'http://192.168.1.6:8000/api/register',
        isFromData: true,
        data: {
          ApiKey.name: firstName,
          ApiKey.lastName: lastName,
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.phoneNumber: phoneNumber, // إرسال رقم الهاتف
        },
      );

      final signUpModel = SignUpModel.fromJson(response);

      if (signUpModel.token == null || signUpModel.token!.isEmpty) {
        throw Exception("Token is missing in the response");
      }

// تخزين التوكن
      await CashHelper().saveData(key: 'token', value: signUpModel.token);
      print("Token saved: ${signUpModel.token}");

      emit(SignUpSuccess(message: signUpModel.message));
    } on ServerException catch (e) {
      emit(SignUpFailure(errMessage: e.errModel.errorMessage));
    } catch (e) {
      print("Error: $e");
      emit(SignUpFailure(errMessage: "Unexpected error occurred"));
    }
  }

  // void updateEmail(String value) {
  //   signInEmail.text = value;
  // }

  // void updatePassword(String value) {
  //   signInPassword.text = value;
  // }

  signIn({required String email, required String password}) async {
    try {
      emit(SignInLoading());

      // إرسال طلب تسجيل الدخول
      final response = await api.post(
        'http://192.168.1.6:8000/api/login',
        data: {'identifier': email, 'password': password},
      );

      // تحويل الاستجابة إلى نموذج SignInModel
      user = SignInModel.fromJson(response);

      // تحقق من أن التوكن موجود وليس فارغًا
      if (user!.token.isEmpty) {
        throw Exception("Token is empty");
      }

      // الحصول على التوكن الكامل بدون تقسيمه
      final token = user!.token;

      // حفظ التوكن مباشرة دون تفسير
      await CashHelper().saveData(key: 'token', value: token);
      print("Token saved: $token");

      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    } catch (e) {
      print("Error: $e");
      emit(SignInFailure(errMessage: "Unexpected error occurred"));
    }
  }
}
