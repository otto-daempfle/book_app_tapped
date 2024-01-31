import 'package:book_app_tapped/config/routes/route_constants.dart';
import 'package:book_app_tapped/modules/home/screens/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  const String initRoute = '/';

  return GoRouter(
    initialLocation: initRoute,
    routes: <GoRoute>[
      GoRoute(
        path: RouteContants.homeRoute,
        builder: (context, state) => const HomePage(),
      ),
      // Add Additional Routes
    ],
  );
});
