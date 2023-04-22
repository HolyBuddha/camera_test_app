import 'package:camera_test_app/modules/home/views/home_page.dart';
import 'package:get/get.dart';


class AppRoutes {
  static const String homePage = '/homepage;';

}

final routes = [
  GetPage(
    name: AppRoutes.homePage,
    page: () => const HomePage(),
  ),
];