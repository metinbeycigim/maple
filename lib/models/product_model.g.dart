// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map json) => _$_ProductModel(
      name: json['name'] as String,
      sku: json['sku'] as String,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      upc: json['upc'] as String?,
      stockQuantity: json['stockQuantity'] as int,
      cost: json['cost'] as String?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'locations': instance.locations?.map((e) => e.toJson()).toList(),
      'upc': instance.upc,
      'stockQuantity': instance.stockQuantity,
      'cost': instance.cost,
    };

_$_Location _$$_LocationFromJson(Map json) => _$_Location(
      location: json['location'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'location': instance.location,
      'quantity': instance.quantity,
    };
