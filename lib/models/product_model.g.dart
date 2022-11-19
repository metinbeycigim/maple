// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      name: json['name'] as String,
      sku: json['sku'] as String,
      location: json['location'] as String?,
      upc: json['upc'] as String?,
      quantity: json['quantity'] as int,
      cost: json['cost'] as String?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'location': instance.location,
      'upc': instance.upc,
      'quantity': instance.quantity,
      'cost': instance.cost,
    };
