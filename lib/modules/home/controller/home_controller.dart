import 'package:camera_test_app/routes/app_routes.dart';
import 'package:camera_test_app/utils/constants/app_text.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  String _imagePath = '';

  getImagePath(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      _imagePath = pickedFile.path;
    } else {
      _imagePath = '';
      Get.snackbar(TextConsts.textErrorTitle, TextConsts.textErrorNoImage);
    }
  }

  toImageDetails() {
    if (_imagePath != '') {
      Get.toNamed(AppRoutes.DETAILS, arguments: {'imagePath': _imagePath});
    } else {
      return;
    }
  }
}
