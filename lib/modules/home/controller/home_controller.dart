import 'package:camera_test_app/utils/constants/app_text.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  String imagePath = '';

  getImagePath(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      imagePath = pickedFile.path;
    } else {
      Get.snackbar(TextConsts.textErrorTitle, TextConsts.textErrorNoImage);
    }
  }
}
