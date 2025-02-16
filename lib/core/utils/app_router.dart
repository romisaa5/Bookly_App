import 'package:bookly/Features/home/presentation/views/book_datails_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
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
        builder: (context, state) => BookDatailsView(),
      ),
      GoRoute(
        path: Ksearchview,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
