// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:deliver_eats/presentation/pages/cart_page.dart' as _i1;
import 'package:deliver_eats/presentation/pages/home_page.dart' as _i2;
import 'package:deliver_eats/presentation/pages/main_page.dart' as _i3;
import 'package:deliver_eats/presentation/pages/order_page.dart' as _i4;
import 'package:deliver_eats/presentation/pages/order_summary_page.dart' as _i5;
import 'package:deliver_eats/presentation/pages/product_detail_page.dart'
    as _i6;
import 'package:deliver_eats/presentation/pages/profile_page.dart' as _i7;
import 'package:deliver_eats/presentation/pages/restaurant_detail_page.dart'
    as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CartPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    OrderRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OrderPage(),
      );
    },
    OrderSummaryRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OrderSummaryPage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProductDetailPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    RestaurantDetailRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RestaurantDetailPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OrderPage]
class OrderRoute extends _i9.PageRouteInfo<void> {
  const OrderRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OrderSummaryPage]
class OrderSummaryRoute extends _i9.PageRouteInfo<void> {
  const OrderSummaryRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OrderSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderSummaryRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProductDetailPage]
class ProductDetailRoute extends _i9.PageRouteInfo<void> {
  const ProductDetailRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProductDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RestaurantDetailPage]
class RestaurantDetailRoute extends _i9.PageRouteInfo<void> {
  const RestaurantDetailRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RestaurantDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'RestaurantDetailRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
