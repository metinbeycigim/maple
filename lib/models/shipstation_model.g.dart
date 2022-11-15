// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipstation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipstationModel _$$_ShipstationModelFromJson(Map<String, dynamic> json) =>
    _$_ShipstationModel(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShipstationModelToJson(_$_ShipstationModel instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      orderId: json['orderId'] as int?,
      orderNumber: json['orderNumber'] as String?,
      orderDate: json['orderDate'] as String?,
      createDate: json['createDate'] as String?,
      modifyDate: json['modifyDate'] as String?,
      paymentDate: json['paymentDate'] as String?,
      orderStatus: json['orderStatus'] as String?,
      customerNote: json['customerNote'] as String?,
      internalNote: json['internalNote'] as String?,
      customerId: json['customerId'] as int?,
      customerUsername: json['customerUsername'] as String?,
      skuForSorting: json['skuForSorting'] as String?,
      ocationForSorting: json['ocationForSorting'] as String?,
      nameForSorting: json['nameForSorting'] as String?,
      quantityForSorting: json['quantityForSorting'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'orderNumber': instance.orderNumber,
      'orderDate': instance.orderDate,
      'createDate': instance.createDate,
      'modifyDate': instance.modifyDate,
      'paymentDate': instance.paymentDate,
      'orderStatus': instance.orderStatus,
      'customerNote': instance.customerNote,
      'internalNote': instance.internalNote,
      'customerId': instance.customerId,
      'customerUsername': instance.customerUsername,
      'skuForSorting': instance.skuForSorting,
      'ocationForSorting': instance.ocationForSorting,
      'nameForSorting': instance.nameForSorting,
      'quantityForSorting': instance.quantityForSorting,
      'items': instance.items,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      sku: json['sku'] as String?,
      location: json['location'] as String?,
      name: json['name'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'sku': instance.sku,
      'location': instance.location,
      'name': instance.name,
      'quantity': instance.quantity,
    };
