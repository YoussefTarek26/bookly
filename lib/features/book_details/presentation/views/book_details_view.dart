import 'package:bookly_app/core/barrel/imports.dart';

class BookDetailsView extends StatelessWidget {
  final int index;
  final bool access;
  const BookDetailsView({super.key, required this.index, required this.access});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: BookDetailsBody(
            index: index,
            access: access,
          )
      ),
    );
  }
}
