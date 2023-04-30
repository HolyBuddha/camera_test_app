import 'package:camera_test_app/modules/home/binding/home_binding.dart';
import 'package:camera_test_app/modules/home/view/home_page.dart';
import 'package:camera_test_app/modules/image_details/bindings/image_details_binding.dart';
import 'package:camera_test_app/modules/image_details/view/image_details_page.dart';
import 'package:camera_test_app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.DETAILS,
      page: () => const ImageDetailsPage(),
      binding: ImageDetailsBinding(),
    ),
  ];
}
