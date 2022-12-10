// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipstation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShipstationModel _$ShipstationModelFromJson(Map<String, dynamic> json) {
  return _ShipstationModel.fromJson(json);
}

/// @nodoc
mixin _$ShipstationModel {
  List<Order>? get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipstationModelCopyWith<ShipstationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipstationModelCopyWith<$Res> {
  factory $ShipstationModelCopyWith(
          ShipstationModel value, $Res Function(ShipstationModel) then) =
      _$ShipstationModelCopyWithImpl<$Res, ShipstationModel>;
  @useResult
  $Res call({List<Order>? orders});
}

/// @nodoc
class _$ShipstationModelCopyWithImpl<$Res, $Val extends ShipstationModel>
    implements $ShipstationModelCopyWith<$Res> {
  _$ShipstationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipstationModelCopyWith<$Res>
    implements $ShipstationModelCopyWith<$Res> {
  factory _$$_ShipstationModelCopyWith(
          _$_ShipstationModel value, $Res Function(_$_ShipstationModel) then) =
      __$$_ShipstationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Order>? orders});
}

/// @nodoc
class __$$_ShipstationModelCopyWithImpl<$Res>
    extends _$ShipstationModelCopyWithImpl<$Res, _$_ShipstationModel>
    implements _$$_ShipstationModelCopyWith<$Res> {
  __$$_ShipstationModelCopyWithImpl(
      _$_ShipstationModel _value, $Res Function(_$_ShipstationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_$_ShipstationModel(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipstationModel implements _ShipstationModel {
  _$_ShipstationModel({final List<Order>? orders}) : _orders = orders;

  factory _$_ShipstationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShipstationModelFromJson(json);

  final List<Order>? _orders;
  @override
  List<Order>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShipstationModel(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipstationModel &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipstationModelCopyWith<_$_ShipstationModel> get copyWith =>
      __$$_ShipstationModelCopyWithImpl<_$_ShipstationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipstationModelToJson(
      this,
    );
  }
}

abstract class _ShipstationModel implements ShipstationModel {
  factory _ShipstationModel({final List<Order>? orders}) = _$_ShipstationModel;

  factory _ShipstationModel.fromJson(Map<String, dynamic> json) =
      _$_ShipstationModel.fromJson;

  @override
  List<Order>? get orders;
  @override
  @JsonKey(ignore: true)
  _$$_ShipstationModelCopyWith<_$_ShipstationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int? get orderId => throw _privateConstructorUsedError;
  String? get orderNumber => throw _privateConstructorUsedError;
  String? get orderDate => throw _privateConstructorUsedError;
  String? get createDate => throw _privateConstructorUsedError;
  String? get modifyDate => throw _privateConstructorUsedError;
  String? get paymentDate => throw _privateConstructorUsedError;
  String? get orderStatus => throw _privateConstructorUsedError;
  String? get customerNote => throw _privateConstructorUsedError;
  String? get internalNote => throw _privateConstructorUsedError;
  int? get customerId => throw _privateConstructorUsedError;
  String? get customerUsername => throw _privateConstructorUsedError;
  String? get skuForSorting => throw _privateConstructorUsedError;
  String? get ocationForSorting => throw _privateConstructorUsedError;
  String? get nameForSorting => throw _privateConstructorUsedError;
  int? get quantityForSorting => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int? orderId,
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
      List<Item>? items});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderNumber = freezed,
    Object? orderDate = freezed,
    Object? createDate = freezed,
    Object? modifyDate = freezed,
    Object? paymentDate = freezed,
    Object? orderStatus = freezed,
    Object? customerNote = freezed,
    Object? internalNote = freezed,
    Object? customerId = freezed,
    Object? customerUsername = freezed,
    Object? skuForSorting = freezed,
    Object? ocationForSorting = freezed,
    Object? nameForSorting = freezed,
    Object? quantityForSorting = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      modifyDate: freezed == modifyDate
          ? _value.modifyDate
          : modifyDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNote: freezed == customerNote
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String?,
      internalNote: freezed == internalNote
          ? _value.internalNote
          : internalNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerUsername: freezed == customerUsername
          ? _value.customerUsername
          : customerUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      skuForSorting: freezed == skuForSorting
          ? _value.skuForSorting
          : skuForSorting // ignore: cast_nullable_to_non_nullable
              as String?,
      ocationForSorting: freezed == ocationForSorting
          ? _value.ocationForSorting
          : ocationForSorting // ignore: cast_nullable_to_non_nullable
              as String?,
      nameForSorting: freezed == nameForSorting
          ? _value.nameForSorting
          : nameForSorting // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityForSorting: freezed == quantityForSorting
          ? _value.quantityForSorting
          : quantityForSorting // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? orderId,
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
      List<Item>? items});
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderNumber = freezed,
    Object? orderDate = freezed,
    Object? createDate = freezed,
    Object? modifyDate = freezed,
    Object? paymentDate = freezed,
    Object? orderStatus = freezed,
    Object? customerNote = freezed,
    Object? internalNote = freezed,
    Object? customerId = freezed,
    Object? customerUsername = freezed,
    Object? skuForSorting = freezed,
    Object? ocationForSorting = freezed,
    Object? nameForSorting = freezed,
    Object? quantityForSorting = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_Order(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      modifyDate: freezed == modifyDate
          ? _value.modifyDate
          : modifyDate // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentDate: freezed == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNote: freezed == customerNote
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String?,
      internalNote: freezed == internalNote
          ? _value.internalNote
          : internalNote // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerUsername: freezed == customerUsername
          ? _value.customerUsername
          : customerUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      skuForSorting: freezed == skuForSorting
          ? _value.skuForSorting
          : skuForSorting // ignore: cast_nullable_to_non_nullable
              as String?,
      ocationForSorting: freezed == ocationForSorting
          ? _value.ocationForSorting
          : ocationForSorting // ignore: cast_nullable_to_non_nullable
              as String?,
      nameForSorting: freezed == nameForSorting
          ? _value.nameForSorting
          : nameForSorting // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityForSorting: freezed == quantityForSorting
          ? _value.quantityForSorting
          : quantityForSorting // ignore: cast_nullable_to_non_nullable
              as int?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  _$_Order(
      {this.orderId,
      this.orderNumber,
      this.orderDate,
      this.createDate,
      this.modifyDate,
      this.paymentDate,
      this.orderStatus,
      this.customerNote,
      this.internalNote,
      this.customerId,
      this.customerUsername,
      this.skuForSorting,
      this.ocationForSorting,
      this.nameForSorting,
      this.quantityForSorting,
      final List<Item>? items})
      : _items = items;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final int? orderId;
  @override
  final String? orderNumber;
  @override
  final String? orderDate;
  @override
  final String? createDate;
  @override
  final String? modifyDate;
  @override
  final String? paymentDate;
  @override
  final String? orderStatus;
  @override
  final String? customerNote;
  @override
  final String? internalNote;
  @override
  final int? customerId;
  @override
  final String? customerUsername;
  @override
  final String? skuForSorting;
  @override
  final String? ocationForSorting;
  @override
  final String? nameForSorting;
  @override
  final int? quantityForSorting;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Order(orderId: $orderId, orderNumber: $orderNumber, orderDate: $orderDate, createDate: $createDate, modifyDate: $modifyDate, paymentDate: $paymentDate, orderStatus: $orderStatus, customerNote: $customerNote, internalNote: $internalNote, customerId: $customerId, customerUsername: $customerUsername, skuForSorting: $skuForSorting, ocationForSorting: $ocationForSorting, nameForSorting: $nameForSorting, quantityForSorting: $quantityForSorting, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.modifyDate, modifyDate) ||
                other.modifyDate == modifyDate) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
            (identical(other.internalNote, internalNote) ||
                other.internalNote == internalNote) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerUsername, customerUsername) ||
                other.customerUsername == customerUsername) &&
            (identical(other.skuForSorting, skuForSorting) ||
                other.skuForSorting == skuForSorting) &&
            (identical(other.ocationForSorting, ocationForSorting) ||
                other.ocationForSorting == ocationForSorting) &&
            (identical(other.nameForSorting, nameForSorting) ||
                other.nameForSorting == nameForSorting) &&
            (identical(other.quantityForSorting, quantityForSorting) ||
                other.quantityForSorting == quantityForSorting) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      orderNumber,
      orderDate,
      createDate,
      modifyDate,
      paymentDate,
      orderStatus,
      customerNote,
      internalNote,
      customerId,
      customerUsername,
      skuForSorting,
      ocationForSorting,
      nameForSorting,
      quantityForSorting,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {final int? orderId,
      final String? orderNumber,
      final String? orderDate,
      final String? createDate,
      final String? modifyDate,
      final String? paymentDate,
      final String? orderStatus,
      final String? customerNote,
      final String? internalNote,
      final int? customerId,
      final String? customerUsername,
      final String? skuForSorting,
      final String? ocationForSorting,
      final String? nameForSorting,
      final int? quantityForSorting,
      final List<Item>? items}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int? get orderId;
  @override
  String? get orderNumber;
  @override
  String? get orderDate;
  @override
  String? get createDate;
  @override
  String? get modifyDate;
  @override
  String? get paymentDate;
  @override
  String? get orderStatus;
  @override
  String? get customerNote;
  @override
  String? get internalNote;
  @override
  int? get customerId;
  @override
  String? get customerUsername;
  @override
  String? get skuForSorting;
  @override
  String? get ocationForSorting;
  @override
  String? get nameForSorting;
  @override
  int? get quantityForSorting;
  @override
  List<Item>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get sku => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call({String? sku, String? location, String? name, int? quantity});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sku = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sku, String? location, String? name, int? quantity});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sku = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_Item(
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  _$_Item({this.sku, this.location, this.name, this.quantity});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String? sku;
  @override
  final String? location;
  @override
  final String? name;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'Item(sku: $sku, location: $location, name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sku, location, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  factory _Item(
      {final String? sku,
      final String? location,
      final String? name,
      final int? quantity}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String? get sku;
  @override
  String? get location;
  @override
  String? get name;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
