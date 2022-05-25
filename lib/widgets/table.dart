import 'package:flutter/material.dart';
import 'package:flutter_trade/helpers/format.dart';
import 'package:flutter_trade/models/data_entry.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({Key? key, required this.data}) : super(key: key);

  final List<DataEntry> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final value = data[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Text(
                formatSymbol(value),
              ),
              Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    formatPrice(value.lastPrice),
                    textAlign: TextAlign.right,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: SizedBox(
                      width: 60,
                      child: Text(
                        formatNumber(value.volume),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  )
                ]),
              )
            ]),
          );
        });
  }
}
