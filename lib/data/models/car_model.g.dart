// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      uuid: json['uuid'] as String,
      type: $enumDecode(_$CarTypeEnumMap, json['type']),
      brand: json['brand'] as String,
      isRegistered: json['isRegistered'] as bool,
      color: json['color'] as String,
      licenceNumber: json['licenceNumber'] as String,
      year: DateTime.parse(json['year'] as String),
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'type': _$CarTypeEnumMap[instance.type],
      'brand': instance.brand,
      'isRegistered': instance.isRegistered,
      'color': instance.color,
      'licenceNumber': instance.licenceNumber,
      'year': instance.year.toIso8601String(),
      'imageUrl': instance.imageUrl,
    };

const _$CarTypeEnumMap = {
  CarType.micro: 'micro',
  CarType.sedan: 'sedan',
  CarType.cuv: 'cuv',
  CarType.suv: 'suv',
  CarType.hatchback: 'hatchback',
  CarType.roadster: 'roadster',
  CarType.pickup: 'pickup',
  CarType.van: 'van',
  CarType.coupe: 'coupe',
  CarType.superCar: 'superCar',
  CarType.camperVan: 'camperVan',
  CarType.cabriolet: 'cabriolet',
  CarType.miniVan: 'miniVan',
};
