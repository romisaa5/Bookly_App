import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_datails_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KhomeView = '/homeView';
  static const KBookdetailsListview = '/bookDetailsView';
  static const Ksearchview = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: KhomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: KBookdetailsListview,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubitCubit(getIt.get<HomeRepoImplementation>()),
          child: BookDatailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: Ksearchview,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
