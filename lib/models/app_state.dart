import 'package:flutter_trade/models/data_entry.dart';
import 'package:flutter_trade/models/sort_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState(
      {@Default([]) List<DataEntry> showState,
      @Default(SortType.Default) SortType sortType,
      @Default(false) bool isInitialized}) = _AppState;
}
