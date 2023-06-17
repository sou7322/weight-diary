// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String? ?? uuid.v4(),
      height: (json['height'] as num).toDouble(),
      name: json['name'] as String,
      targetWeight: (json['targetWeight'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'height': instance.height,
      'name': instance.name,
      'targetWeight': instance.targetWeight,
    };
