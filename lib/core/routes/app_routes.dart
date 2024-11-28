import 'package:delivery_app/features/auth/presentation/view/forget_password.dart';
import 'package:delivery_app/features/auth/presentation/view/sign_in_view.dart';
import 'package:delivery_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:delivery_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:delivery_app/features/profile/presentation/view/edit_profile_view.dart';
import 'package:delivery_app/features/profile/presentation/view/profile_view.dart';
import 'package:delivery_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => OnBoardingView(),
  ),
  GoRoute(
    path: "/SignUpView",
    builder: (context, state) => SignUpView(),
  ),
  GoRoute(
    path: "/SignInView",
    builder: (context, state) => SignInView(),
  ),
  GoRoute(
    path: "/ForgetPasswordView",
    builder: (context, state) => ForgetPasswordView(),
  ),
  GoRoute(
    path: "/profileView",
    builder: (context, state) => profileView(),
  ),
  GoRoute(
    path: "/EditProfileView",
    builder: (context, state) => EditProfileView(),
  ),
]);
