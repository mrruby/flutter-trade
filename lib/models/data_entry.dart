import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_entry.freezed.dart';
part 'data_entry.g.dart';

@freezed
class DataEntry with _$DataEntry {
  const factory DataEntry({
    required final String base,
    required final String quote,
    required final String type,
    required final num lastPrice,
    required final num volume,
  }) = _DataEntry;

  factory DataEntry.fromJson(Map<String, dynamic> json) =>
      _$DataEntryFromJson(json);
}
