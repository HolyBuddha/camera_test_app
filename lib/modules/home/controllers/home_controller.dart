import 'dart:io';

import 'package:camera_test_app/constants/text.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  var selectedImagePath = "".obs;
  

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
    } else {
      Get.snackbar(TextConsts.textForCameraErrorTitle, TextConsts.textForCamereErrorMain);
    }
  }
}
