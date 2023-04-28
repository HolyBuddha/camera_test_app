import 'package:camera_test_app/data/models/image_data_info.dart';
import 'package:camera_test_app/data/providers/image_detail_page_provider.dart';
import 'package:get/get.dart';

class ImageDetailsController extends GetxController {
  ImageDetailsController(this._imagePageProvider);

  final ImageDetailPageProvider _imagePageProvider;
  String _imagePath = '';
  Rxn<ImageDataInfo> imageData = Rxn<ImageDataInfo>();
  RxBool isLoading = true.obs;

  @override
  onInit() async {
    super.onInit();

    if (Get.arguments != null) {
      _imagePath = Get.arguments['imagePath'];
      imageData.value = await _imagePageProvider.getImageInfo(_imagePath);
      isLoading.value = false;
    }
  }
}
