import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_trade/helpers/format.dart';
import 'package:flutter_trade/helpers/sort_and_show.dart';
import 'package:flutter_trade/models/app_state.dart';
import 'package:flutter_trade/models/data_entry.dart';
import 'package:flutter_trade/models/data_list.dart';
import 'package:flutter_trade/widgets/loading_indicator.dart';
import 'package:flutter_trade/widgets/table.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<DataEntry> baseList = [];
  AppState appState = const AppState();
  late TabController _tabController;
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 3);
    _textController = TextEditingController();
    _textController.addListener(() {
      setState(() {
        appState = appState.copyWith(
            showState: applyFiltersAndSearch(baseList, _tabController.index,
                _textController.text, appState.sortType));
      });
    });
    _tabController.addListener(() {
      _textController.clear();
      FocusManager.instance.primaryFocus?.unfocus();
      setState(() {
        appState = appState.copyWith(
            showState: applyFiltersAndSearch(baseList, _tabController.index,
                _textController.text, appState.sortType));
      });
    });
    loadData();
  }

  Future<void> loadData() async {
    final String response = await rootBundle.loadString('data/data.json');
    final rawData = await json.decode(response);
    final result = DataList.fromJson({'data': rawData});
    setState(() {
      baseList = result.data;
      appState = appState.copyWith(
          showState: applyFiltersAndSearch(baseList, _tabController.index,
              _textController.text, appState.sortType),
          isInitialized: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: appState.isInitialized
                ? Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        tabs: const [
                          Tab(text: "All"),
                          Tab(text: "Spot"),
                          Tab(text: "Futures"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: TextField(
                          controller: _textController,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Search',
                            suffixIcon: IconButton(
                              onPressed: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                _textController.clear();
                              },
                              icon: const Icon(Icons.clear),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () => setState(() {
                                    final sort = symbolSort(appState.sortType);
                                    appState = appState.copyWith(
                                        showState: applyFiltersAndSearch(
                                            baseList,
                                            _tabController.index,
                                            _textController.text,
                                            sort),
                                        sortType: sort);
                                  }),
                              child: Text(
                                  "${symbolFormat(appState.sortType)}Symbol")),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () => setState(() {
                                          final sort =
                                              priceSort(appState.sortType);
                                          appState = appState.copyWith(
                                              sortType: sort,
                                              showState: applyFiltersAndSearch(
                                                  baseList,
                                                  _tabController.index,
                                                  _textController.text,
                                                  sort));
                                        }),
                                    child: Text(
                                        "${priceFormat(appState.sortType)}Last Price")),
                                TextButton(
                                    onPressed: () => setState(() {
                                          final sort =
                                              volSort(appState.sortType);
                                          appState = appState.copyWith(
                                              showState: applyFiltersAndSearch(
                                                  baseList,
                                                  _tabController.index,
                                                  _textController.text,
                                                  sort),
                                              sortType: sort);
                                        }),
                                    child: Text(
                                        "${volFormat(appState.sortType)}Volume")),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: CustomTable(data: appState.showState)),
                    ],
                  )
                : const LoadingIndicator()));
  }
}
