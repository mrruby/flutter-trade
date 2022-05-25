// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataEntry _$DataEntryFromJson(Map<String, dynamic> json) {
  return _DataEntry.fromJson(json);
}

/// @nodoc
mixin _$DataEntry {
  String get base => throw _privateConstructorUsedError;
  String get quote => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  num get lastPrice => throw _privateConstructorUsedError;
  num get volume => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataEntryCopyWith<DataEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEntryCopyWith<$Res> {
  factory $DataEntryCopyWith(DataEntry value, $Res Function(DataEntry) then) =
      _$DataEntryCopyWithImpl<$Res>;
  $Res call(
      {String base, String quote, String type, num lastPrice, num volume});
}

/// @nodoc
class _$DataEntryCopyWithImpl<$Res> implements $DataEntryCopyWith<$Res> {
  _$DataEntryCopyWithImpl(this._value, this._then);

  final DataEntry _value;
  // ignore: unused_field
  final $Res Function(DataEntry) _then;

  @override
  $Res call({
    Object? base = freezed,
    Object? quote = freezed,
    Object? type = freezed,
    Object? lastPrice = freezed,
    Object? volume = freezed,
  }) {
    return _then(_value.copyWith(
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      lastPrice: lastPrice == freezed
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as num,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_DataEntryCopyWith<$Res> implements $DataEntryCopyWith<$Res> {
  factory _$$_DataEntryCopyWith(
          _$_DataEntry value, $Res Function(_$_DataEntry) then) =
      __$$_DataEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String base, String quote, String type, num lastPrice, num volume});
}

/// @nodoc
class __$$_DataEntryCopyWithImpl<$Res> extends _$DataEntryCopyWithImpl<$Res>
    implements _$$_DataEntryCopyWith<$Res> {
  __$$_DataEntryCopyWithImpl(
      _$_DataEntry _value, $Res Function(_$_DataEntry) _then)
      : super(_value, (v) => _then(v as _$_DataEntry));

  @override
  _$_DataEntry get _value => super._value as _$_DataEntry;

  @override
  $Res call({
    Object? base = freezed,
    Object? quote = freezed,
    Object? type = freezed,
    Object? lastPrice = freezed,
    Object? volume = freezed,
  }) {
    return _then(_$_DataEntry(
      base: base == freezed
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      lastPrice: lastPrice == freezed
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as num,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataEntry implements _DataEntry {
  const _$_DataEntry(
      {required this.base,
      required this.quote,
      required this.type,
      required this.lastPrice,
      required this.volume});

  factory _$_DataEntry.fromJson(Map<String, dynamic> json) =>
      _$$_DataEntryFromJson(json);

  @override
  final String base;
  @override
  final String quote;
  @override
  final String type;
  @override
  final num lastPrice;
  @override
  final num volume;

  @override
  String toString() {
    return 'DataEntry(base: $base, quote: $quote, type: $type, lastPrice: $lastPrice, volume: $volume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataEntry &&
            const DeepCollectionEquality().equals(other.base, base) &&
            const DeepCollectionEquality().equals(other.quote, quote) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.lastPrice, lastPrice) &&
            const DeepCollectionEquality().equals(other.volume, volume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(base),
      const DeepCollectionEquality().hash(quote),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(lastPrice),
      const DeepCollectionEquality().hash(volume));

  @JsonKey(ignore: true)
  @override
  _$$_DataEntryCopyWith<_$_DataEntry> get copyWith =>
      __$$_DataEntryCopyWithImpl<_$_DataEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataEntryToJson(this);
  }
}

abstract class _DataEntry implements DataEntry {
  const factory _DataEntry(
      {required final String base,
      required final String quote,
      required final String type,
      required final num lastPrice,
      required final num volume}) = _$_DataEntry;

  factory _DataEntry.fromJson(Map<String, dynamic> json) =
      _$_DataEntry.fromJson;

  @override
  String get base => throw _privateConstructorUsedError;
  @override
  String get quote => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  num get lastPrice => throw _privateConstructorUsedError;
  @override
  num get volume => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataEntryCopyWith<_$_DataEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
