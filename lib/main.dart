import 'package:flutter/material.dart';
import 'package:flutter_tests/ui/myhomepage.dart';
import 'package:flutter_tests/ui/SubPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
        routes: <String, WidgetBuilder> {
          '/home': (BuildContext context) =>  MyHomePage(),
          '/subpage': (BuildContext context) =>  SubPage()
        }

    );
  }
}




