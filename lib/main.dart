import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/network/service_locator.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/all_books/newst_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/best_books/best_seller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>
            NewstBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewsBooks()),

        BlocProvider(create: (context) =>
            BestSellerCubit(getIt.get<HomeRepoImpl>())..fetchBestSeller())

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          scaffoldBackgroundColor:  kBackgroundColor,
        ),
      ),
    );
  }
}
