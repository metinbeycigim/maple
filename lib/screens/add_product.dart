import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maple/services_providers/firebase_database.dart';

class AddProduct extends ConsumerWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(FirebaseDatabase.productStreamProvider);

    return provider.when(
        data: (products) {
          return const Scaffold(
            body: Center(
              child: Text('data placeholder'),
            ),
          );
        },
        error: ((error, stackTrace) => const Center(
              child: Text('Error placeholder'),
            )),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
