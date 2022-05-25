// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataList _$DataListFromJson(Map<String, dynamic> json) {
  return _DataList.fromJson(json);
}

/// @nodoc
mixin _$DataList {
  List<DataEntry> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataListCopyWith<DataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListCopyWith<$Res> {
  factory $DataListCopyWith(DataList value, $Res Function(DataList) then) =
      _$DataListCopyWithImpl<$Res>;
  $Res call({List<DataEntry> data});
}

/// @nodoc
class _$DataListCopyWithImpl<$Res> implements $DataListCopyWith<$Res> {
  _$DataListCopyWithImpl(this._value, this._then);

  final DataList _value;
  // ignore: unused_field
  final $Res Function(DataList) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataEntry>,
    ));
  }
}

/// @nodoc
abstract class _$$_DataListCopyWith<$Res> implements $DataListCopyWith<$Res> {
  factory _$$_DataListCopyWith(
          _$_DataList value, $Res Function(_$_DataList) then) =
      __$$_DataListCopyWithImpl<$Res>;
  @override
  $Res call({List<DataEntry> data});
}

/// @nodoc
class __$$_DataListCopyWithImpl<$Res> extends _$DataListCopyWithImpl<$Res>
    implements _$$_DataListCopyWith<$Res> {
  __$$_DataListCopyWithImpl(
      _$_DataList _value, $Res Function(_$_DataList) _then)
      : super(_value, (v) => _then(v as _$_DataList));

  @override
  _$_DataList get _value => super._value as _$_DataList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DataList(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataList implements _DataList {
  const _$_DataList({required final List<DataEntry> data}) : _data = data;

  factory _$_DataList.fromJson(Map<String, dynamic> json) =>
      _$$_DataListFromJson(json);

  final List<DataEntry> _data;
  @override
  List<DataEntry> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataList &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_DataListCopyWith<_$_DataList> get copyWith =>
      __$$_DataListCopyWithImpl<_$_DataList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataListToJson(this);
  }
}

abstract class _DataList implements DataList {
  const factory _DataList({required final List<DataEntry> data}) = _$_DataList;

  factory _DataList.fromJson(Map<String, dynamic> json) = _$_DataList.fromJson;

  @override
  List<DataEntry> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataListCopyWith<_$_DataList> get copyWith =>
      throw _privateConstructorUsedError;
}
