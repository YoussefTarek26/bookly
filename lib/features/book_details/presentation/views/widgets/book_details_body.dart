import 'package:bookly_app/features/book_details/presentation/views/widgets/customer_app_bar.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/customer_book_details_all.dart';
import 'package:bookly_app/features/book_details/presentation/views/widgets/similar_books.dart';
import 'package:flutter/material.dart';

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
