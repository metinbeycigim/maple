// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  String name;
  String sku;
  List<Location>? locations;
  String? upc;
  int stockQuantity;
  String? cost;
  Product({
    required this.name,
    required this.sku,
    this.locations,
    this.upc,
    required this.stockQuantity,
    this.cost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sku': sku,
      'locations': locations?.map((x) => x.toMap()).toList(),
      'upc': upc,
      'stockQuantity': stockQuantity,
      'cost': cost,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] as String,
      sku: map['sku'] as String,
      locations: map['locations'] != null
          ? List<Location>.from(
              (map['locations']).map(
                (x) => Location.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      upc: map['upc'] != null ? map['upc'] as String : null,
      stockQuantity: map['stockQuantity'] as int,
      cost: map['cost'] != null ? map['cost'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Location {
  String? location;
  int? quantity;
  Location({
    this.location,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'quantity': quantity,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      location: map['location'] != null ? map['location'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) => Location.fromMap(json.decode(source) as Map<String, dynamic>);
}
