import 'package:auto_route/auto_route.dart';
import 'package:my_profile/routes/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|View|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter({
    super.navigatorKey,
  });

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DashboardRoute.page, initial: true),
        AutoRoute(page: UserRoute.page),
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
