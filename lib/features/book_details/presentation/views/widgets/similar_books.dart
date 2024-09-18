import 'package:bookly_app/core/barrel/imports.dart';

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
