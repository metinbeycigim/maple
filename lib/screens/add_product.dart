import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maple/constants/widgets.dart';
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
  final skuController = TextEditingController();
  final quantityController = TextEditingController(text: '0');
  final barcodeController = TextEditingController();
  final locationController = TextEditingController();

  @override
  void dispose() {
    productNameController.dispose();
    skuController.dispose();
    quantityController.dispose();
    barcodeController.dispose();
    locationController.dispose();
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
          int? databaseProductQuantity = productList.firstWhereOrNull(
            (element) {
              return element.sku == skuController.text;
            },
          )?.quantity;
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
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
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
                              verticalSpace(20),
                              Row(
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: FormBuilderTextField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter SKU',
                                          border: OutlineInputBorder(),
                                          labelText: 'SKU',
                                        ),
                                        textCapitalization: TextCapitalization.characters,
                                        name: 'sku',
                                        controller: skuController,
                                        onChanged: ((value) => setState(() {})),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: FormBuilderTextField(
                                        decoration: const InputDecoration(
                                          hintText: 'Enter Location',
                                          border: OutlineInputBorder(),
                                          labelText: 'Location',
                                        ),
                                        textCapitalization: TextCapitalization.characters,
                                        name: 'location',
                                        controller: locationController,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(20),
                              FormBuilderTextField(
                                decoration: const InputDecoration(
                                  hintText: 'Enter Barcode',
                                  border: OutlineInputBorder(),
                                  labelText: 'Barcode',
                                ),
                                name: 'barcode',
                                controller: barcodeController,
                                keyboardType: TextInputType.number,
                              ),
                              verticalSpace(25),
                              databaseProductQuantity != null
                                  ? Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '$databaseProductQuantity',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Text(' pc(s) in stock')
                                      ],
                                    )
                                  : verticalSpace(23),
                              verticalSpace(30),
                              const Text('Quantity'),
                              verticalSpace(5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      int currentQuantity = int.parse(quantityController.text);
                                      currentQuantity--;
                                      quantityController.text = currentQuantity < 0 ? '0' : currentQuantity.toString();
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(), minimumSize: const Size(50, 50)),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 60,
                                    child: FormBuilderTextField(
                                      decoration: const InputDecoration(
                                        border:
                                            OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                        // labelText: 'Quantity',
                                      ),
                                      textAlign: TextAlign.center,
                                      name: 'quantity',
                                      controller: quantityController,
                                      keyboardType: TextInputType.number,
                                      onTap: () => quantityController.selection =
                                          TextSelection(baseOffset: 0, extentOffset: quantityController.text.length),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      int currentQuantity = int.parse(quantityController.text);
                                      currentQuantity++;
                                      quantityController.text = currentQuantity.toString();
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(), minimumSize: const Size(50, 50)),
                                    child: const Icon(
                                      Icons.add,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
