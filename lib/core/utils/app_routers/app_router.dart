import 'package:bookly_app/features/book_details/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context,state)=> const SplashScreen(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context,state)=> const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context,state){
        final extraData = state.extra as Map <String , dynamic>;
        return BookDetailsView(
            index: extraData['index'] as int,
            access: extraData['access'] as bool,
        );
  }
    ),
  ]);
}
