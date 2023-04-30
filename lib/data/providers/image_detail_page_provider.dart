import 'package:camera_test_app/data/models/image_data_info.dart';
import 'package:camera_test_app/data/repositories/image_detail_repo.dart';
import 'package:get/get.dart';

abstract class ImageDetailPageProvider {
  Future<ImageDataInfo?> getImageInfo(String filePath);
}

class ImageDetailPageProviderImpl implements ImageDetailPageProvider {
  final ImageDetailPageRepository _imagePageRepository;

  ImageDetailPageProviderImpl(this._imagePageRepository);

  @override
  Future<ImageDataInfo?> getImageInfo(String filePath) async {
    try {
      var imageInfo = await _imagePageRepository.uploadImage(filePath);
      return imageInfo;
    } catch (e) {
      Get.log(e.toString(), isError: true);
      return null;
    }
  }
}
