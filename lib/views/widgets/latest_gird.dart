import 'package:flutter/material.dart';
import 'package:infinite_scroll_image/models/image_model.dart';

class LatestGird extends StatelessWidget {
  const LatestGird({super.key, required this.images});

  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 150,
          height: (200 + (images[index].height % 100)).toDouble(),
          child: Image.network(
            images[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
