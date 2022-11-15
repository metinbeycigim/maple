import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipstation_model.freezed.dart';
part 'shipstation_model.g.dart';

@freezed
class ShipstationModel with _$ShipstationModel {

  factory ShipstationModel({
    List<Order>? orders,
  }) = _ShipstationModel;

  factory ShipstationModel.fromJson(Map<String, dynamic> json) => _$ShipstationModelFromJson(json);
}



@freezed
class Order with _$Order {

  factory Order({
    int? orderId,
  String? orderNumber,
  String? orderDate,
  String? createDate,
  String? modifyDate,
  String? paymentDate,
  String? orderStatus,
  String? customerNote,
  String? internalNote,
  int? customerId,
  String? customerUsername,
  String? skuForSorting,
  String? ocationForSorting,
  String? nameForSorting,
  int? quantityForSorting,
  List<Item>? items,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}



@freezed
class Item with _$Item {

  factory Item({ 
  String? sku,
  String? location,
  String? name,
  int? quantity,}) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}