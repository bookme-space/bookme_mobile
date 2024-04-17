
import 'package:bookme_mobile/features/auth/login/view/login_page.dart';
import 'package:bookme_mobile/features/auth/registration/view/registration_page.dart';
import 'package:bookme_mobile/features/auth_wrapper.dart';
import 'package:bookme_mobile/features/home/view/home_page.dart';
import 'package:bookme_mobile/features/place/view/place_page.dart';
import 'package:bookme_mobile/router/utils/app_route_redirect.dart';
import 'package:bookme_mobile/utils/constants/routes_keys.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutesKeys.authWrapper,
  redirect: appRouteRedirect,
  routes: [
    GoRoute(
        path: RoutesKeys.login,
        builder: (context, state) => const LoginPage()
    ),
    GoRoute(
        path: RoutesKeys.registration,
        builder: (context, state) => const RegistrationPage()
    ),
    GoRoute(
        path: RoutesKeys.authWrapper,
        builder: (context, state) => const AuthWrapper()
    ),
    GoRoute(
        path: RoutesKeys.home,
        builder: (context, state) => const HomePage()
    ),
    GoRoute(
        path: '${RoutesKeys.place}:id',
        builder: (context, state) {
          final id = state.pathParameters['id'];
          if(id is String) {
            return  PlacePage(id: id);

          }
          return const HomePage();
        }
    )
  ],
);
