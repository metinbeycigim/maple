import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maple/constants/shipstation_credentials.dart';
import 'package:maple/models/shipstation_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shipstation_order.g.dart';

@riverpod
Future<ShipstationModel> getOrders(GetOrdersRef ref) async {
  final apiKey = ShipstationCredentials.instance.key;
  final apiSecret = ShipstationCredentials.instance.secret;
  final dio = Dio();

  final response = await dio
      .get('https://$apiKey:$apiSecret@ssapi.shipstation.com/orders?orderStatus=awaiting_shipment&pageSize=500');

  try {
    return ShipstationModel.fromJson(response.data);
  } on PlatformException catch (error) {
    Fluttertoast.showToast(msg: error.message.toString());
  }
  throw Exception('Failed to load orders');
}


