// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['_id'] as String?,
      countryCode: json['countryCode'] as String?,
      phone: json['phone'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      isVerified: json['isVerified'] as bool,
      isProfileCompleted: json['isProfileCompleted'] as bool,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      '_id': instance.id,
      'countryCode': instance.countryCode,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'isVerified': instance.isVerified,
      'isProfileCompleted': instance.isProfileCompleted,
    };
