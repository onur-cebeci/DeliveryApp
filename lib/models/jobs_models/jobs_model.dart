import 'package:freezed_annotation/freezed_annotation.dart';

part 'jobs_model.freezed.dart';
part 'jobs_model.g.dart';

@freezed
class JobsModel with _$JobsModel {
  const factory JobsModel(
      {required String title,
      required String desc,
      required String packageLocation,
      required String targetLocation,
      required String id,
      required String state,
      required String price,
      required String sum,
      required String productType,
      required String address,
      required String phone,
      required String beginDate,
      required String endDate,
      required String advertiser,
      required double mapLat,
      required double mapLng,
      @Default(false) bool isDone}) = _JobsModel;

  factory JobsModel.fromJson(Map<String, dynamic> json) =>
      _$JobsModelFromJson(json);
}
