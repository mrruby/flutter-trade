import 'package:flutter_trade/models/data_entry.dart';
import 'package:flutter_trade/models/data_type.dart';
import 'package:flutter_trade/models/sort_type.dart';
import 'package:intl/intl.dart';

formatNumber(num myNumber) {
  NumberFormat numberFormat = NumberFormat.compactCurrency(
    symbol: "",
  );
  return '\$${numberFormat.format(myNumber)}';
}

String symbolFormat(SortType currentSortType) {
  if (currentSortType == SortType.SymbolAsc) {
    return "↓";
  }
  if (currentSortType == SortType.SymbolDesc) {
    return "↑";
  }
  return '';
}

String priceFormat(SortType currentSortType) {
  if (currentSortType == SortType.PriceAsc) {
    return "↓";
  }
  if (currentSortType == SortType.PriceDesc) {
    return "↑";
  }
  return '';
}

String volFormat(SortType currentSortType) {
  if (currentSortType == SortType.VolAsc) {
    return "↓";
  }
  if (currentSortType == SortType.VolDesc) {
    return "↑";
  }
  return '';
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
