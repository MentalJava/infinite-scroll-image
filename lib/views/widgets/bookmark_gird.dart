import 'package:flutter/material.dart';
import 'package:infinite_scroll_image/models/image_model.dart';

class BookmarkGrid extends StatelessWidget {
  const BookmarkGrid({
    super.key,
    required this.images,
  });

  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: (100 + (images[index].width % 100)).toDouble(),
            child: Image.network(
              images[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
