import 'package:go_router/go_router.dart';
import 'package:tv_shows_bloc_app/ui/screens/popular_tv_show_details.dart';
import 'package:tv_shows_bloc_app/ui/screens/popular_tv_show_screen.dart';

class AppRoutes {
  static const HOME = '/';
  static const DETAILS = '/details';
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.HOME,
      builder: (context, state) => PopularTvShowsScreen(),
    ),
    GoRoute(
      path: AppRoutes.DETAILS,
      builder: (context, state) => PopularTvShowDetails(
        popularTvShowDetailsPageObject:
            state.extra as PopularTvShowDetailsPageObject,
      ),
    ),
  ],
);
