import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final String TitleTexts = ModalRoute.of(context).settings.arguments;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(TitleTexts),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading:  FlutterLogo(),
                  title: Text("exmple"),
                  trailing: Icon(Icons.more_vert),
                  subtitle: Text('hoge'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}