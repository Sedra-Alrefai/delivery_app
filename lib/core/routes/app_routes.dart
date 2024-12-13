import 'package:delivery_app/features/auth/presentation/view/forget_password.dart';
import 'package:delivery_app/features/auth/presentation/view/sign_in_view.dart';
import 'package:delivery_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:delivery_app/features/favorite/favorite_view.dart';
import 'package:delivery_app/features/home/presentation/views/home_view.dart';
import 'package:delivery_app/features/markets/presentation/views/markets_view.dart';
import 'package:delivery_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:delivery_app/features/profile/presentation/view/edit_profile_view.dart';
import 'package:delivery_app/features/profile/presentation/view/profile_view.dart';
import 'package:delivery_app/features/single_product/single_product_view.dart';
import 'package:delivery_app/features/splash/presentation/view/splash_view.dart';
import 'package:delivery_app/features/user/user_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnBoardingView(),
  ),
  GoRoute(
    path: "/SignUpView",
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: "/SignInView",
    builder: (context, state) => const SignInView(),
  ),
  GoRoute(
    path: "/HomeView",
    builder: (context, state) => const HomeView(),
  ),
  GoRoute(
    path: "/FavoriteView",
    builder: (context, state) => const FavoriteView(),
  ),
  GoRoute(
    path: "/UserView",
    builder: (context, state) => const UserView(),
  ),
  GoRoute(
    path: "/MarketsView",
    builder: (context, state) => const MarketsView(),
  ),
  GoRoute(
    path: "/ForgetPasswordView",
    builder: (context, state) => const ForgetPasswordView(),
  ),
  GoRoute(
    path: "/profileView",
    builder: (context, state) => const ProfileView(),
  ),
  // GoRoute(
  //   path: "/EditProfileView",
  //   builder: (context, state) => const EditProfileView(),
  // ),
  // GoRoute(
  //   path: "/Pr",
  //   builder: (context, state) => const EditProfileView(),
  // ),
  GoRoute(
    path: "/ProductDetailsView",
    builder: (context, state) => const ProductDetailsView(
      productName: 'mmmmmmm',
      productPrice: 45,
      description:
          'vvbnbvcvbnmnbvcxcfgbhcxcgbhdsxfgbhnbfdxfgbhbfdxfgbhdsfjkdfhdghfghgyhghgtghgtghgtghgthgcvbghgfdl;bhgtvbhgvgbtvbhgvbhgvhgthnygtvfgbh',
      productImage: 'assets/image/store.jpg',
      rating: 3,
    ),
  ),
]);
