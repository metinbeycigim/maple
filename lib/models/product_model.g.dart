// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      name: json['name'] as String,
      sku: json['sku'] as String,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      upc: json['upc'] as String?,
      stockQuantity: json['stockQuantity'] as int,
      cost: json['cost'] as String?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'locations': instance.locations,
      'upc': instance.upc,
      'stockQuantity': instance.stockQuantity,
      'cost': instance.cost,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      location: json['location'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'location': instance.location,
      'quantity': instance.quantity,
    };
