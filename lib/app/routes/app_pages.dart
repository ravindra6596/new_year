import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initialRoute = Routes.homeRoutes;

  static final routes = [
    GetPage(
      name: _Paths.homeRoutes,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
