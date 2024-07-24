import 'package:bookly_app/features/home/presentation/views/widgets/custom_booK_image.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return const CustomBooKImage();
      },),
    );
  }
}

