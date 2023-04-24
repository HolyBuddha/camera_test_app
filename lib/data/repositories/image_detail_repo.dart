import 'dart:convert';

import 'package:camera_test_app/utils/constants/app_api.dart';
import 'package:camera_test_app/data/models/image_data_info.dart';
import 'package:camera_test_app/utils/errors/exceptions.dart';
import 'package:http/http.dart' as http;

class ImageDetailPageRepository {
  uploadImage(String filePath) async {
    var postUri = Uri.parse(ApiConsts.baseUrl);

    http.MultipartRequest request = http.MultipartRequest('POST', postUri)
      ..fields['key'] = ApiConsts.apiKey
      ..files.add(await http.MultipartFile.fromPath('image', filePath));

    try {
      http.StreamedResponse streamResponse = await request.send();

      final response = await http.Response.fromStream(streamResponse);

      if (response.statusCode == 200) {
        return ImageDataInfo.fromJson(json.decode(response.body));
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }
}
