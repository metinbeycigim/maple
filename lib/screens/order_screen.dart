import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maple/services_providers/shipstation_order.dart';

class OrderScreen extends ConsumerWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orders = ref.watch(getOrdersProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Orders'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: orders.hasValue
                  ? Text(
                      'Order Qty: ${orders.whenData((value) => value.orders!.length).value}',
                    )
                  : const Text('Loading'),
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async => ref.refresh(getOrdersProvider.future),
          child: orders.when(
              data: (shipstation) {
                final orderList = shipstation.orders ?? [];
                return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: orderList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            leading: Text(orderList[index].orderNumber.toString()),
                          ));
                    });
              },
              error: ((error, stackTrace) => Text(error.toString())),
              loading: () => const Center(child: CircularProgressIndicator())),
        ));
  }
}
