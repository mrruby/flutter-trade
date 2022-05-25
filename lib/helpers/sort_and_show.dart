import 'package:flutter_trade/models/data_entry.dart';
import 'package:flutter_trade/models/data_map.dart';
import 'package:flutter_trade/models/data_type.dart';
import 'package:flutter_trade/models/sort_type.dart';

final basepriority = ["BTC", "ETH", "WOO"];
final quotepriority = ["USDT", "USDC"];

List<DataEntry> showBasedOn(List<DataEntry> base, int index, String search) {
  final listByTab = index == 0
      ? base
      : base.where((element) => element.type == dataMap[index]).toList();

  return search == ''
      ? listByTab
      : listByTab
          .where((element) => element.base.contains(search.toUpperCase()))
          .toList();
}

SortType symbolSort(SortType currentSortType) {
  if (currentSortType == SortType.SymbolAsc) {
    return SortType.SymbolDesc;
  }
  if (currentSortType == SortType.SymbolDesc) {
    return SortType.Default;
  }
  return SortType.SymbolAsc;
}

SortType priceSort(SortType currentSortType) {
  if (currentSortType == SortType.PriceAsc) {
    return SortType.PriceDesc;
  }
  if (currentSortType == SortType.PriceDesc) {
    return SortType.Default;
  }
  return SortType.PriceAsc;
}

SortType volSort(SortType currentSortType) {
  if (currentSortType == SortType.VolAsc) {
    return SortType.VolDesc;
  }
  if (currentSortType == SortType.VolDesc) {
    return SortType.Default;
  }
  return SortType.VolAsc;
}

List<DataEntry> applyFiltersAndSearch(
    List<DataEntry> base, int index, String search, SortType symbolSort) {
  final currentList = showBasedOn(base, index, search);
  return sortBySymbolOrType(currentList, index, symbolSort);
}

List<DataEntry> sortBySymbolOrType(
    List<DataEntry> list, int tabIndex, SortType sortType) {
  final isAll = dataMap[tabIndex] == 'All';

  if (sortType == SortType.SymbolAsc || sortType == SortType.SymbolDesc) {
    final tempList = list.toList();
    tempList.sort((a, b) => "${a.base}${a.quote}${a.type}"
        .toLowerCase()
        .compareTo("${b.base}${b.quote}${b.type}".toLowerCase()));

    if (sortType == SortType.SymbolDesc) {
      return tempList.reversed.toList();
    }
    return tempList;
  }

  if (sortType == SortType.PriceAsc || sortType == SortType.PriceDesc) {
    final tempList = list.toList();
    tempList.sort((a, b) => a.lastPrice.compareTo(b.lastPrice));

    if (sortType == SortType.PriceDesc) {
      return tempList.reversed.toList();
    }
    return tempList;
  }

  if (sortType == SortType.VolAsc || sortType == SortType.VolDesc) {
    final tempList = list.toList();
    tempList.sort((a, b) => a.volume.compareTo(b.volume));

    if (sortType == SortType.VolDesc) {
      return tempList.reversed.toList();
    }
    return tempList;
  }

  final BTCbase =
      list.where((element) => element.base == basepriority[0]).toList();

  final ETHbase =
      list.where((element) => element.base == basepriority[1]).toList();

  final WOObase =
      list.where((element) => element.base == basepriority[2]).toList();

  final rest =
      list.where((element) => !basepriority.contains(element.base)).toList();

  final order = [BTCbase, ETHbase, WOObase, rest].expand((insideList) {
    final USDTquote = insideList
        .where((element) =>
            element.type == DataType.SPOT.value &&
            element.quote == quotepriority[0])
        .toList();

    final USDCquote = insideList
        .where((element) =>
            element.type == DataType.SPOT.value &&
            element.quote == quotepriority[1])
        .toList();

    final PERP = insideList
        .where((element) => element.type == DataType.FUTURES.value)
        .toList();

    for (var internalList in [USDTquote, USDCquote, PERP]) {
      if (isAll) {
        internalList.sort((a, b) => a.base.compareTo(b.base));
      } else {
        internalList.sort((a, b) => -a.volume.compareTo(b.volume));
      }
    }

    return [...USDTquote, ...USDCquote, ...PERP];
  }).toList();

  return order;
}
