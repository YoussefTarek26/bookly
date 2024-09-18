import 'package:bookly_app/core/barrel/imports.dart';

class CustomBooKImage extends StatelessWidget {
  final String image;
  const CustomBooKImage({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: AspectRatio(
            aspectRatio: 2/3,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child:
                Image.network(image,fit: BoxFit.fill,))),
      ),
    );
  }
}
