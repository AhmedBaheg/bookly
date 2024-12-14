import 'package:bookly/features/home/presentation/screen/book_details_screen.dart';
import 'package:bookly/features/home/presentation/screen/home_screen.dart';
import 'package:bookly/features/search/presentation/screen/widget/search_screen.dart';
import 'package:bookly/features/splash/presentation/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeScreen = '/homeScreen';
  static const String kBookDetailsScreen = '/bookDetailsScreen';
  static const String kSearchScreen = '/searchScreen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => const BookDetailsScreen(),
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (context, state) => const SearchScreen(),
      ),
    ],
  );
}
