import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maple/models/product_model.dart';
import 'package:maple/services_providers/firebase_database.dart';

class AddProduct extends ConsumerStatefulWidget {
  const AddProduct({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddProductState();
}

class _AddProductState extends ConsumerState<AddProduct> {
  final _formKey = GlobalKey<FormBuilderState>();
  final productNameController = TextEditingController();

  @override
  void dispose() {
    productNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(FirebaseDatabase.productStreamProvider);

    return provider.when(
        data: (products) {
          final List<ProductModel> productList = [];
          for (var snapshot in products.docs) {
            final product = ProductModel.fromJson(snapshot.data());
            productList.add(product);
          }
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              appBar: AppBar(title: const Text('Add Product')),
              body: Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: [
                      FormBuilder(
                        key: _formKey,
                        onChanged: () {
                          _formKey.currentState!.save();
                        },
                        child: Column(
                          children: [
                            FormBuilderTextField(
                              decoration: const InputDecoration(
                                hintText: 'Enter the product name',
                                border: OutlineInputBorder(),
                                labelText: 'Product Name',
                              ),
                              textCapitalization: TextCapitalization.words,
                              name: 'product_name',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
