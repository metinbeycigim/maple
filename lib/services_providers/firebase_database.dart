import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maple/models/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_database.g.dart';

@riverpod
class FirebaseDatabase extends _$FirebaseDatabase {
  final CollectionReference<Map<String, dynamic>> _productsRef = FirebaseFirestore.instance.collection('Products');
  Stream<QuerySnapshot<Map<String, dynamic>>> get productsRef => _productsRef.snapshots();

  Future<void> addOrUpdateProductFirebase(ProductModel product) async {
    try {
      final productRef = _productsRef.doc(product.sku.toUpperCase());
      final productDoc = await productRef.get();
      if (productDoc.data() == null) {
        await productRef.set(product.toJson());
      } else {
        List<Map<String, dynamic>> locationList = [];
        for (var location in [...?product.locations]) {
          final locationMap = location.toJson();
          locationList.add(locationMap);
        }
        int totalQuantity = 0;
        for (var element in locationList) {
          totalQuantity += element['quantity'] as int;
        }

        await productRef.update({
          'stockQuantity': totalQuantity,
          'locations': locationList,
        });
      }
    } on FirebaseException catch (e) {
      Fluttertoast.showToast(msg: e.message.toString());
    }
  }

  Future<void> updateProductFirebase(ProductModel product) async {
    try {
      await _productsRef.doc(product.sku.toUpperCase()).update(product.toJson());
    } on FirebaseException catch (e) {
      Fluttertoast.showToast(msg: e.message.toString());
    }
  }

  @override
  build() {
    return null;
  }

  static final productsStreamProvider = StreamProvider.autoDispose((ref) => FirebaseDatabase().productsRef);
  static final firebaseClassProvider = Provider<FirebaseDatabase>((ref) => FirebaseDatabase());
}
