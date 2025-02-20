import 'package:bookly/Features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly/Features/home/presentation/manager/Newest%20Books/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/featured%20books/featured_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  setup();

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            var cubit = FeaturedBooksCubit(getIt.get<HomeRepoImplementation>());
            cubit.fetchFeaturedBooks();
            return cubit;
          },
        ),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImplementation>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
