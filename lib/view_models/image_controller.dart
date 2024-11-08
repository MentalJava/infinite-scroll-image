import 'package:get/get.dart';
import 'package:infinite_scroll_image/models/image_model.dart';
import 'package:infinite_scroll_image/services/image_service.dart';

class ImageController extends GetxController {
  var isLoading = true.obs;
  var bookmarks = <ImageModel>[].obs;
  var latestImages = <ImageModel>[].obs;
  final ImageService _imageService = ImageService();

  @override
  void onInit() {
    super.onInit();
    fetchImages();
  }

  void fetchImages() async {
    try {
      isLoading.value = true;
      latestImages.value = await _imageService.fetchRandomImages(count: 10);
      bookmarks.value = await _imageService.fetchRandomImages(count: 5);
    } finally {
      isLoading.value = false;
    }
  }
}
