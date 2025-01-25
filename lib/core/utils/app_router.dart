import 'package:mvvm_bookly/Features/onboardig/presentation/views/onboarding_view.dart';

import '../../Features/get_Start/presentation/views/get_Start_view.dart';
import '/Features/home/presentation/views/book_details_view.dart';
import '/Features/home/presentation/views/home_view.dart';
import '/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';
  static const onBoardingView = '/onBoardingView';
  static const getStartView = '/getStartView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
          path: onBoardingView,
          builder: (context, state) => const OnboardingView()),
      GoRoute(
          path: getStartView,
          builder: (context, state) => const GetStartView()),
    ],
  );
}
