import 'package:go_router/go_router.dart';
import 'package:maple/screens/home.dart';
import 'package:maple/screens/orders.dart';
import 'package:maple/screens/product_detail.dart';
import 'package:maple/screens/product_list.dart';

class Routes {
  const Routes._();
  static get instance => const Routes._();

  List<GoRoute> get routes => [
        GoRoute(
          path: '/',
          builder: (context, state) => const Home(),
        ),
        GoRoute(
          path: '/orders',
          builder: (context, state) => const Orders(),
        ),
        GoRoute(
          path: '/product_list',
          builder: (context, state) => const ProductList(),
        ),
        GoRoute(
          path: '/product_detail',
          builder: (context, state) => ProductDetail(sku: state.extra as String),
        )
      ];
}
