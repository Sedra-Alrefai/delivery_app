import 'package:delivery_app/core/database/cache/cache_helper.dart';
import 'package:delivery_app/core/service/servise_locator.dart';

void onBoardingVisited() {
  getIt<CashHelper>().saveData(key: "isOnBoardingVisited", value: true);
}
