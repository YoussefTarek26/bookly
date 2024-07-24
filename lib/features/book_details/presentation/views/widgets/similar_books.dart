import 'package:bookly_app/core/utils/stayles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("  You can also like",style: Styles.textStyle18,),
        SizedBox(height: 15,),
        SizedBox(
        height: 122,
          child: FeaturedListView(),
        )
      ],
    );
  }
}
