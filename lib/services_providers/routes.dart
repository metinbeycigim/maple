import 'package:go_router/go_router.dart';
import 'package:maple/screens/add_product.dart';
import 'package:maple/screens/home.dart';
import 'package:maple/screens/orders.dart';
import 'package:maple/screens/product_detail.dart';
import 'package:maple/screens/product_list.dart';

class Routes {
  const Routes._();
  static const Routes instance = Routes._();

  List<GoRoute> get routes => [
        GoRoute(
          path: '/',
          builder: (context, state) => const Home(),
        ),
        GoRoute(
          path: '/add_product',
          builder: (context, state) => const AddProduct(),
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
