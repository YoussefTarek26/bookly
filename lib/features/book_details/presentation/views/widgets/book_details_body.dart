import 'package:bookly_app/core/barrel/imports.dart';

class BookDetailsBody extends StatelessWidget {
  final int index;
  final bool access;
  const  BookDetailsBody({super.key, required this.index, required this.access});

  @override
  Widget build(BuildContext context) {
    return
      access? Column(
      children: [
        const CustomerAppBar(),
        CustomerBookDetailsAll(index: index,),
        const SizedBox(height: 40,),
        const SimilarBooks(),
      ],
    ):Column(
        children: [
          const CustomerAppBar(),
          CustomerBookDetailsAll(index: index,),
          const SizedBox(height: 40,),
          const SimilarBooks(),
        ],
      );
  }
}
