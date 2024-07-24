import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBooKImage extends StatelessWidget {
  const CustomBooKImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
        ),
        child: AspectRatio(
            aspectRatio: 2/3,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child:
                Image.asset(AssetsData.testImage,fit: BoxFit.fill,))),
      ),
    );
  }
}
