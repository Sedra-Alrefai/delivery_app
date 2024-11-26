import 'package:go_router/go_router.dart';

void CustomNavigation(context, String path) {
  GoRouter.of(context).push(path);
}

void CustomNavigationReplacement(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
