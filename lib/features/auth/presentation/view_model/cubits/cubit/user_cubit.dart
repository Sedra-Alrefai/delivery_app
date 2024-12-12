import 'package:bloc/bloc.dart';
import 'package:delivery_app/core/api/api_consumer.dart';
import 'package:delivery_app/core/api/end_points.dart';
import 'package:delivery_app/core/database/cache/cache_helper.dart';
import 'package:delivery_app/core/errors/exceptions.dart';
import 'package:delivery_app/features/auth/presentation/models/signin_model.dart';
import 'package:delivery_app/features/auth/presentation/models/signup_model.dart';
import 'package:delivery_app/features/profile/presentation/models/user_model_profile.dart';
import 'package:dio/dio.dart';
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
  SignUpModel? signUpUser;

  signUp({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String phoneNumber,
  }) async {
    try {
      emit(SignUpLoading());

      // إرسال طلب تسجيل المستخدم
      final response = await api.post(
        // 'http://192.168.1.6:8000/api/register',
        'http://192.168.43.253:8000/api/register',
        isFromData: true,
        data: {
          "name": firstName,
          "lastName": lastName,
          "email": email,
          "password": password,
          "phoneNumber": phoneNumber,
        },
      );

      print("Response Data: $response");

      signUpUser = SignUpModel.fromJson(response);

      if (signUpUser?.token == null || signUpUser!.token!.isEmpty) {
        throw Exception("Token is empty or null");
      }

      final token = signUpUser!.token!;
      final userId = response['user']['id']; // استخراج الـ id

      await CashHelper().saveData(key: 'token', value: token);
      await CashHelper().saveData(key: 'userId', value: userId);

      print("Token saved: $token");

      emit(SignUpSuccess(message: signUpUser!.message));
      final storedToken = CashHelper().getDataString(key: 'token');
      print("Stored Token: $storedToken");
    } on ServerException catch (e) {
      emit(SignUpFailure(errMessage: e.errModel.errorMessage));
    } catch (e) {
      print("Error: $e");
      emit(SignUpFailure(
          errMessage: "Unexpected error occurred. Please try again."));
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      emit(SignInLoading());

      final response = await api.post(
        // 'http://10.0.2.2:8000/api/login',
        // 'http://192.168.1.6:8000/api/login',
        'http://192.168.43.253:8000/api/login',
        data: {'identifier': email, 'password': password},
      );

      if (response['token'] == null || response['token'].isEmpty) {
        emit(SignInFailure(errMessage: "Invalid credentials or empty token."));
        return;
      }

      user = SignInModel.fromJson(response);

      final token = user!.token;
      final userId = response['userId']; // استخراج الـ id

      await CashHelper().saveData(key: 'token', value: token);
      await CashHelper().saveData(key: 'userId', value: userId);

      emit(SignInSuccess());
    } on DioException catch (e) {
      emit(SignInFailure(errMessage: "Connection failed: ${e.message}"));
    } catch (e) {
      emit(SignInFailure(errMessage: "Unexpected error occurred: $e"));
    }
  }
//__________________

  Future<void> getUserProfile() async {
    try {
      emit(GetUserLoading());

      final userId =
          CashHelper().getData(key: 'userId'); // الحصول على id المستخدم
      if (userId == null) {
        emit(GetUserFailure(errMessage: "User ID not found"));
        return;
      }

      final response = await api.get(
        'http://192.168.43.253:8000/api/users/$userId', // استدعاء API باستخدام id
      );

      print("User Profile Response: $response");

      final userModel =
          UserModel.fromJson(response); // تحويل البيانات إلى الموديل
      emit(GetUserSuccess(userModel: userModel));
    } catch (e) {
      print("Error fetching user profile: $e");
      emit(GetUserFailure(errMessage: "Failed to load user profile."));
    }
  }
}
