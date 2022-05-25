import 'package:flutter_trade/models/data_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_list.freezed.dart';
part 'data_list.g.dart';

@freezed
class DataList with _$DataList {
  const factory DataList({required List<DataEntry> data}) = _DataList;

  factory DataList.fromJson(Map<String, dynamic> json) =>
      _$DataListFromJson(json);
}
