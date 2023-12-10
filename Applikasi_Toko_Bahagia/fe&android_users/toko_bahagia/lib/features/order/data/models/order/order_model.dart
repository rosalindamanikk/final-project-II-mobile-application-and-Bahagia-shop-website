import 'package:delshop/features/order/data/models/order_detail/order_detail_model.dart';
import 'package:delshop/features/order/data/models/order_detail_pulsa/order_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_model.freezed.dart';
part 'order_model.g.dart';

typedef OrderList = List<OrderModel>;


@freezed
class OrderModel with _$OrderModel {
  factory OrderModel({
    required int id,
    required String code,
    required double total,
    @Default('-') String description,
    required String paymentMethod,
    required OrderDetailList orderDetails,
    required OrderDetailPulsaList orderDetailsPulsa,
    required String status,
    required String createdAt,
    required String bukti_pembayaran,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, Object?> json) =>
      _$OrderModelFromJson(json);
}
