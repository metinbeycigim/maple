import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product_model.dart';
import '../services_providers/firebase_database.dart';

class ProductDetail extends ConsumerWidget {
  final String sku;
  const ProductDetail({required this.sku, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productProvider = ref.watch(FirebaseDatabase.productsStreamProvider);

    return productProvider.when(
        data: (products) {
          final List<Location> locationList = [];
          for (var snapshot in products.docs) {
            final product = ProductModel.fromJson(snapshot.data());
            for (var location in product.locations!) {
              locationList.add(location);
            }
          }
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              appBar: AppBar(title: Text(sku)),
              body: Padding(
                padding: const EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: locationList.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text(locationList[index].location.toString()),
                      trailing: Text(locationList[index].quantity.toString()),
                    );
                  }),
                ),
              ),
            ),
          );
        },
        error: ((error, stackTrace) => const Center(
              child: Text('Error placeholder'),
            )),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
