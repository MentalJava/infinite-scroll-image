import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:infinite_scroll_image/view_models/image_controller.dart';
import 'package:infinite_scroll_image/views/widgets/bookmark_gird.dart';
import 'package:infinite_scroll_image/views/widgets/latest_gird.dart';

class Home extends StatelessWidget {
  Home({
    super.key,
  });

  final imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMAGELIST'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('북마크'),
              Obx(
                () => imageController.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SingleChildScrollView(
                        child: BookmarkGrid(images: imageController.bookmarks)),
              ),
              const Text('최신이미지'),
              Obx(
                () => imageController.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SingleChildScrollView(
                        child: Expanded(
                            child: SizedBox(
                                height: 400,
                                child: LatestGird(
                                    images: imageController.bookmarks))),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
