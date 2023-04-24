import 'package:camera_test_app/data/models/image_data_info.dart';
import 'package:camera_test_app/data/repositories/image_detail_repo.dart';
import 'package:camera_test_app/utils/errors/exceptions.dart';

class ImageDetailPageProvider {
  final ImageDetailPageRepository _homePageRepository;

  ImageDetailPageProvider(this._homePageRepository);

  Future<ImageDataInfo?> getImageInfo(String filePath) async {
    try {
      ImageDataInfo imageInfo = await _homePageRepository.uploadImage(filePath);
      return imageInfo;
    } on ServerException {
      return null;
    }
  }
}
