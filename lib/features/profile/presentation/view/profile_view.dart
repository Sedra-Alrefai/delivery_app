import 'package:delivery_app/core/function/navigation.dart';
import 'package:delivery_app/core/utils/app_text_Style.dart';
import 'package:delivery_app/features/auth/presentation/view_model/cubits/cubit/user_cubit.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/app_bar_container_edit_profile.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/id_profile_user.dart';
import 'package:delivery_app/features/profile/presentation/view/widget/profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is GetUserLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is GetUserSuccess) {
            final user = state.userModel;
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarContainerEditProfile(
                    title: 'Profile User',
                    onPressed: () {
                      CustomNavigationReplacement(context, '/HomeView');
                    },
                  ),
                  IdProfileUser(
                    userName: "${user.name} ${user.lastName}",
                    subTitle: user.email,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "General",
                      style: CustomTextStyle.parkinsans400Style12.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const ProfileViewBody(),
                ],
              ),
            );
          } else if (state is GetUserFailure) {
            return Center(
              child: Text(
                "Error: ${state.errMessage}",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
            );
          } else {
            return const Center(
              child: Text(
                "No user data available.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
