import 'dart:convert';

import 'package:infinite_scroll_image/models/image_model.dart';
import 'package:http/http.dart' as http;

class ImageService {
  final String _baseUrl = 'https://api.unsplash.com/photos/random';
  final String _apiKey = 'NjUI8-6mVAyTkin7lh-O2nbhl4-bUiluWjsEgTWFUxk';

  Future<List<ImageModel>> fetchRandomImages({int count = 10}) async {
    final response =
        await http.get(Uri.parse('$_baseUrl/?count=$count&client_id=$_apiKey'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => ImageModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to  load images');
    }
  }
}
