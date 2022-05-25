import 'package:flutter_trade/models/data_entry.dart';
import 'package:flutter_trade/models/data_type.dart';
import 'package:flutter_trade/models/sort_state.dart';
import 'package:flutter_trade/models/sort_type.dart';
import 'package:intl/intl.dart';

formatNumber(num myNumber) {
  NumberFormat numberFormat = NumberFormat.compactCurrency(
    symbol: "",
  );
  return '\$${numberFormat.format(myNumber)}';
}

SortState symbolSortState(SortType currentSortType) {
  if (currentSortType == SortType.SymbolAsc) {
    return SortState.Down;
  }
  if (currentSortType == SortType.SymbolDesc) {
    return SortState.Up;
  }
  return SortState.None;
}

SortState priceSortState(SortType currentSortType) {
  if (currentSortType == SortType.PriceAsc) {
    return SortState.Down;
  }
  if (currentSortType == SortType.PriceDesc) {
    return SortState.Up;
  }
  return SortState.None;
}

SortState volSortState(SortType currentSortType) {
  if (currentSortType == SortType.VolAsc) {
    return SortState.Down;
  }
  if (currentSortType == SortType.VolDesc) {
    return SortState.Up;
  }
  return SortState.None;
}

formatPrice(num price) {
  final formatter =
      NumberFormat(price < 0.01 ? '#,##0.000000' : '#,##0.00', "en_US");
  return '\$${formatter.format(price)}';
}

formatSymbol(DataEntry value) {
  return value.type == DataType.SPOT.value
      ? '${value.base}/${value.quote}'
      : '${value.base}-PERP';
}
