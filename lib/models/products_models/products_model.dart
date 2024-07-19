import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_model.freezed.dart';
part 'products_model.g.dart';

@freezed
class ProductsModel with _$ProductsModel {
  const factory ProductsModel(
      {required String title,
      required String desc,
      required String targetLocation,
      required String id,
      required String state,
      required String productType,
      required String address,
      required String phone,
      required String beginDate,
      required String endDate,
      required double mapLat,
      required double mapLng,
      @Default(false) bool isDone}) = _ProductsModel;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}
