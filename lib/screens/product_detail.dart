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
          ProductModel? product;
          for (var snapshot in products.docs.where((element) => element['sku'] == sku)) {
            final firebaseProduct = ProductModel.fromJson(snapshot.data());
            for (var location in firebaseProduct.locations!) {
              locationList.add(location);
            }
            product = firebaseProduct;
          }
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              appBar: AppBar(title: Text(sku)),
              body: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            product!.name,
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('Location'), Text('Quantity')],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Card(
                          child: ListView.builder(
                            itemCount: locationList.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(18, 20, 6, 6),
                                      child: Text(locationList[index].location.toString()),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(6, 20, 18, 6),
                                      child: Text(locationList[index].quantity.toString()),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Edit Product'),
                        //!----------------------------------------------------------------
                        //! edit field will be implemented as a modal bottom sheet widget.
                        //!----------------------------------------------------------------
                      ),
                    )
                  ],
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
