import 'package:bookly_app/features/book_details/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final int index;
  final bool access;
  const BookDetailsView({super.key, required this.index, required this.access});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetailsBody(index: index, access: access,)),
    );
  }
}
