import 'package:camera_test_app/data/providers/image_detail_page_provider.dart';
import 'package:camera_test_app/data/repositories/image_detail_repo.dart';
import 'package:camera_test_app/modules/image_details/controller/image_details_controller.dart';
import 'package:get/get.dart';

class ImageDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageDetailPageRepository>(() => ImageDetailPageRepository());
    Get.lazyPut<ImageDetailPageProvider>(
        () => ImageDetailPageProviderImpl(Get.find()));

    Get.lazyPut<ImageDetailsController>(
        () => ImageDetailsController(Get.find()));
  }
}
