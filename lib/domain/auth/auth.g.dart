// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$$_AuthFromJson(Map<String, dynamic> json) => _$_Auth(
      id: json['_id'] as String?,
      countryCode: json['countryCode'] as String?,
      phone: json['phone'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      '_id': instance.id,
      'countryCode': instance.countryCode,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
