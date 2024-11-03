import 'package:get/get.dart';
import 'package:infinite_scroll_image/models/image_model.dart';

class SkeletonController extends GetxController {
  var isLoading = true.obs;
  var images = <ImageModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadImage();
  }

  void loadImage() {}
}
