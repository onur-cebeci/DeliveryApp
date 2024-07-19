// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsModelImpl _$$ProductsModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductsModelImpl(
      title: json['title'] as String,
      desc: json['desc'] as String,
      targetLocation: json['targetLocation'] as String,
      id: json['id'] as String,
      state: json['state'] as String,
      productType: json['productType'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      beginDate: json['beginDate'] as String,
      endDate: json['endDate'] as String,
      mapLat: (json['mapLat'] as num).toDouble(),
      mapLng: (json['mapLng'] as num).toDouble(),
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductsModelImplToJson(_$ProductsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'targetLocation': instance.targetLocation,
      'id': instance.id,
      'state': instance.state,
      'productType': instance.productType,
      'address': instance.address,
      'phone': instance.phone,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
      'mapLat': instance.mapLat,
      'mapLng': instance.mapLng,
      'isDone': instance.isDone,
    };
