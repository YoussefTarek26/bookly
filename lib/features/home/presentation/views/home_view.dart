import 'package:bookly_app/core/barrel/imports.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: HomeBody()
      ),
    );
  }
}
