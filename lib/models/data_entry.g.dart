// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataEntry _$$_DataEntryFromJson(Map<String, dynamic> json) => _$_DataEntry(
      base: json['base'] as String,
      quote: json['quote'] as String,
      type: json['type'] as String,
      lastPrice: json['lastPrice'] as num,
      volume: json['volume'] as num,
    );

Map<String, dynamic> _$$_DataEntryToJson(_$_DataEntry instance) =>
    <String, dynamic>{
      'base': instance.base,
      'quote': instance.quote,
      'type': instance.type,
      'lastPrice': instance.lastPrice,
      'volume': instance.volume,
    };
