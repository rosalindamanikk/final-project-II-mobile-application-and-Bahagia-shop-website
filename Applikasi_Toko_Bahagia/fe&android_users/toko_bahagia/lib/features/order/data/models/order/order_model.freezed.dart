// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  List<OrderDetail> get orderDetails => throw _privateConstructorUsedError;
  List<OrderDetailPulsa> get orderDetailsPulsa => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get bukti_pembayaran => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int id,
      String code,
      double total,
      String description,
      String paymentMethod,
      List<OrderDetail> orderDetails,
        List<OrderDetailPulsa> orderDetailsPulsa,
        String status,
      String createdAt,
      String bukti_pembayaran});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? total = null,
    Object? description = null,
    Object? paymentMethod = null,
    Object? orderDetails = null,
    Object? orderDetailsPulsa = null,
    Object? status = null,
    Object? createdAt = null,
    Object? bukti_pembayaran = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>,
      orderDetailsPulsa: null == orderDetailsPulsa
          ? _value.orderDetailsPulsa
          : orderDetailsPulsa // ignore: cast_nullable_to_non_nullable
      as List<OrderDetailPulsa>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      bukti_pembayaran: null == bukti_pembayaran
          ? _value.bukti_pembayaran
          : bukti_pembayaran
            as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      double total,
      String description,
      String paymentMethod,
      List<OrderDetail> orderDetails,
        List<OrderDetailPulsa> orderDetailsPulsa,
        String status,
      String createdAt,
      String bukti_pembayaran});
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? total = null,
    Object? description = null,
    Object? paymentMethod = null,
    Object? orderDetails = null,
    Object? orderDetailsPulsa = null,
    Object? status = null,
    Object? createdAt = null,
    Object? bukti_pembayaran = null,
  }) {
    return _then(_$_OrderModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      orderDetails: null == orderDetails
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>,
      orderDetailsPulsa: null == orderDetailsPulsa
          ? _value._orderDetailsPulsa
          : orderDetailsPulsa // ignore: cast_nullable_to_non_nullable
      as List<OrderDetailPulsa>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      bukti_pembayaran: null == bukti_pembayaran
          ? _value.bukti_pembayaran
          : bukti_pembayaran
            as String,
    ));
  }
}

/// @nodoc
class _$_OrderModel implements _OrderModel {
  _$_OrderModel({
    required this.id,
    required this.code,
    required this.total,
    this.description = '-',
    required this.paymentMethod,
    required List<OrderDetail> orderDetails, // Perbaikan 1: Hapus kata kunci 'final'
    required List<OrderDetailPulsa> orderDetailsPulsa, // Perbaikan 1: Hapus kata kunci 'final'
    required this.status,
    required this.createdAt,
    required this.bukti_pembayaran,
  }) : _orderDetails = orderDetails,
        _orderDetailsPulsa = orderDetailsPulsa;

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final double total;
  @override
  @JsonKey()
  final String description;
  @override
  final String paymentMethod;
  final List<OrderDetail> _orderDetails;
  @override
  List<OrderDetail> get orderDetails {
    if (_orderDetails is EqualUnmodifiableListView) return _orderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDetails);
  }
  final List<OrderDetailPulsa> _orderDetailsPulsa;
  @override
  List<OrderDetailPulsa> get orderDetailsPulsa {
    if (_orderDetailsPulsa is EqualUnmodifiableListView) return _orderDetailsPulsa;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDetailsPulsa);
  }

  @override
  final String status;
  @override
  final String createdAt;
  @override
  final String bukti_pembayaran;
  @override
  String toString() {
    return 'OrderModel(id: $id, code: $code, total: $total, description: $description, paymentMethod: $paymentMethod, orderDetails: $orderDetails, orderDetailsPulsa: $orderDetailsPulsa ,status: $status, createdAt: $createdAt, bukti_pembayaran: $bukti_pembayaran)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails) &&
            const DeepCollectionEquality()
            .equals(other._orderDetailsPulsa, _orderDetailsPulsa) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt))&&
            (identical(other.bukti_pembayaran, bukti_pembayaran)||
                other.bukti_pembayaran == bukti_pembayaran);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      total,
      description,
      paymentMethod,
      const DeepCollectionEquality().hash(_orderDetails),
      const DeepCollectionEquality().hash(_orderDetailsPulsa),
      status,
      createdAt,
      bukti_pembayaran);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  factory _OrderModel(
      {required final int id,
      required final String code,
      required final double total,
      final String description,
      required final String paymentMethod,
      required final List<OrderDetail> orderDetails,
        required final List<OrderDetailPulsa> orderDetailsPulsa,
      required final String status,
      required final String createdAt,
      required final String bukti_pembayaran}) = _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  double get total;
  @override
  String get description;
  @override
  String get paymentMethod;
  @override
  List<OrderDetail> get orderDetails;
  @override
  List<OrderDetailPulsa> get orderDetailsPulsa;
  @override
  String get status;
  @override
  String get createdAt;
  @override
  String get bukti_pembayaran;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
