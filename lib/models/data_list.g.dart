// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataList _$$_DataListFromJson(Map<String, dynamic> json) => _$_DataList(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataListToJson(_$_DataList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
