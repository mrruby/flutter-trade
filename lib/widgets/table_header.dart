import 'package:flutter/material.dart';
import 'package:flutter_trade/models/sort_state.dart';

class TableHeader extends StatelessWidget {
  const TableHeader(
      {Key? key,
      required this.onPressed,
      required this.sortState,
      required this.text})
      : super(key: key);

  final void Function()? onPressed;
  final SortState sortState;
  final String text;

  String get sortSymbol {
    if (sortState == SortState.Down) {
      return "↓";
    }
    if (sortState == SortState.Up) {
      return "↑";
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    final isInSortState =
        sortState == SortState.Down || sortState == SortState.Up;
    return TextButton(
        onPressed: onPressed,
        child: Text("$sortSymbol$text",
            style: TextStyle(
                fontWeight: isInSortState ? FontWeight.bold : FontWeight.normal,
                color: isInSortState
                    ? Colors.deepPurpleAccent
                    : Colors.lightBlue)));
  }
}
