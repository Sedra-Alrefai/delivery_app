import 'package:delivery_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_app/features/auth/presentation/view_model/cubits/cubit/user_cubit.dart';
import 'package:delivery_app/features/auth/presentation/widget/email_and_password_fields.dart';
import 'package:delivery_app/features/auth/presentation/widget/bottom_container_sign_in.dart';
import 'package:delivery_app/features/auth/presentation/widget/header_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A2E35),
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is SignInSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Sign In Successful')),
            );
          } else if (state is SignInFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errMessage)),
            );
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
            const  Column(
                children: [
                  SizedBox(height: 150),
                  HeaderWidget(),
                  SizedBox(height: 100),
                  EmailAndPasswordFields(),
                  SizedBox(height: 65),
                  Expanded(child: BottomContainer()),
                ],
              ),
              if (state is SignInLoading)
                Container(
                  color: const Color(0xff1A2E35).withOpacity(0.8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(color: AppColors.tealGreen),
                        const SizedBox(height: 20),
                        Text(
                          'Loading...',
                          style: TextStyle(
                            color: AppColors.tealGreen,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
