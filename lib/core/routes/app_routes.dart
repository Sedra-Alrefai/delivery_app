import 'package:delivery_app/features/auth/presentation/view/sign_in_view.dart';
import 'package:delivery_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:delivery_app/features/favorite/favorite_view.dart';
import 'package:delivery_app/features/home/presentation/views/home_view.dart';
import 'package:delivery_app/features/markets/markets_view.dart';
import 'package:delivery_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:delivery_app/features/splash/presentation/view/splash_view.dart';
import 'package:delivery_app/features/user/user_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(initialLocation: '/HomeView', routes: [
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
    path: "/HomeView",
    builder: (context, state) => HomeView(),
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
]);
