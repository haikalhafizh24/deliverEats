import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: CartRoute.page),
        AutoRoute(page: OrderRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    AutoRoute(page: RestaurantDetailRoute.page),
    AutoRoute(page: ProductDetailRoute.page),
    AutoRoute(page: OrderSummaryRoute.page),
  ];
}
