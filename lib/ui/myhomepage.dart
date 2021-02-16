import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> listItems = [

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          children:  <Widget>[
            Card(
              child: ListTile(
                leading:  FlutterLogo(),
                title: Text("text1"),
                trailing: Icon(Icons.more_vert),
                subtitle: Text("This is subtitle. Subtitle is very long and use three lines"),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading:  FlutterLogo(),
                title: Text("text2"),
                trailing: Icon(Icons.more_vert),
                subtitle: Text("This is subtitle. Subtitle is very long and use three lines"),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading:  FlutterLogo(),
                title: Text("text3"),
                trailing: Icon(Icons.more_vert),
                subtitle: Text("This is subtitle. Subtitle is very long and use three lines"),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading:  FlutterLogo(),
                title: Text("text4"),
                trailing: Icon(Icons.more_vert),
                subtitle: Text("This is subtitle. Subtitle is very long and use three lines"),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading:  FlutterLogo(),
                title: Text("text5"),
                trailing: Icon(Icons.more_vert),
                subtitle: Text("This is subtitle. Subtitle is very long and use three lines"),
                onTap: () {},
              ),
            ),
          ]
      ),
    );
  }


}
