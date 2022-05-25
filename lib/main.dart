import 'package:flutter/material.dart';
import 'package:flutter_trade/screens/hompage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
            tabBarTheme: const TabBarTheme(
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.blue)),
                unselectedLabelStyle:
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                labelStyle:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            colorScheme: const ColorScheme.dark(),
            textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            ),
  
      ),
      home: const HomePage(),
        ));
  }
}
