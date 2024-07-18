// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobsModelImpl _$$JobsModelImplFromJson(Map<String, dynamic> json) =>
    _$JobsModelImpl(
      title: json['title'] as String,
      desc: json['desc'] as String,
      packageLocation: json['packageLocation'] as String,
      targetLocation: json['targetLocation'] as String,
      id: json['id'] as String,
      state: json['state'] as String,
      price: json['price'] as String,
      sum: json['sum'] as String,
      productType: json['productType'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      beginDate: json['beginDate'] as String,
      endDate: json['endDate'] as String,
      advertiser: json['advertiser'] as String,
      mapLat: (json['mapLat'] as num).toDouble(),
      mapLng: (json['mapLng'] as num).toDouble(),
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$JobsModelImplToJson(_$JobsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'packageLocation': instance.packageLocation,
      'targetLocation': instance.targetLocation,
      'id': instance.id,
      'state': instance.state,
      'price': instance.price,
      'sum': instance.sum,
      'productType': instance.productType,
      'address': instance.address,
      'phone': instance.phone,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
      'advertiser': instance.advertiser,
      'mapLat': instance.mapLat,
      'mapLng': instance.mapLng,
      'isDone': instance.isDone,
    };
