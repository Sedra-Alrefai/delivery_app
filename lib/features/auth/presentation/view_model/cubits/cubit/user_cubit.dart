import 'package:bloc/bloc.dart';
import 'package:delivery_app/core/api/api_conSumer.dart';
import 'package:delivery_app/core/api/end_points.dart';
import 'package:delivery_app/core/database/cache/cache_helper.dart';
import 'package:delivery_app/core/errors/exCeptions.dart';
import 'package:delivery_app/features/auth/presentation/models/signIn_model.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;

  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();

  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();

  //Sign up  password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();
  void updateEmail(String value) {
    signInEmail.text = value;
  }

  void updatePassword(String value) {
    signInPassword.text = value;
  }

  SignInModel? user;
  signIn() async {
    try {
      print('Email: ${signInEmail.text}, Password: ${signInPassword.text}');
      emit(SignInLoading());
      final response = await api.post(
        EndPoint.signIn,
        data: {
          ApiKey.email: signInEmail.text,
          ApiKey.password: signInPassword.text,
        },
      );
      print(response.toString());
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.token);
      CashHelper().saveData(key: ApiKey.token, value: user!.token);
      CashHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    }
  }
}
