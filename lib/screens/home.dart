import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maple/models/product_model.dart';
import 'package:maple/services_providers/firebase_database.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward_rounded),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.red,
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    const product = ProductModel(name: 'testname', sku: 'testsku', stockQuantity: 3);
                    ref.watch(firebaseDatabaseProvider).addOrUpdateProductFirebase(product);
                  },
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.shop),
                  onPressed: () {
                    ref
                        .watch(firebaseDatabaseProvider)
                        .updateProductFirebase(const ProductModel(name: 'updatedname', sku: 'testsku', stockQuantity: 3));
                  },
                  color: Colors.white,
                ),
              ],
            ),
          )),
    );
  }
}
