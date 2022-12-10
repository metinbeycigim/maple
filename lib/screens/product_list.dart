import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../models/product_model.dart';
import '../services_providers/firebase_database.dart';

class ProductList extends ConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productProvider = ref.watch(FirebaseDatabase.productsStreamProvider);

    return productProvider.when(
        data: (products) {
          final List<ProductModel> productList = [];
          for (var snapshot in products.docs) {
            final product = ProductModel.fromJson(snapshot.data());
            productList.add(product);
          }
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              appBar: AppBar(title: const Text('Product List')),
              body: Padding(
                padding: const EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: productList.length,
                  itemBuilder: ((context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 4,
                      shadowColor: Colors.black,
                      child: ListTile(
                        onTap: () => context.push('/product_detail', extra: productList[index].sku),
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(productList[index].sku),
                          ],
                        ),
                        title: Text(productList[index].name),
                        trailing: Text(productList[index].stockQuantity.toString()),
                      ),
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
