import 'package:bookly_app/core/barrel/imports.dart';

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
