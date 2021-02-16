import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  final String TitleTexts;
  final String imageurl;

  const SubPage({Key key, this.imageurl, this.TitleTexts}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    // final String TitleTexts = ModalRoute.of(context).settings.arguments;


    return new Scaffold(
      appBar: new AppBar(
        title: new Text(TitleTexts),
      ),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(imageurl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )
    );
  }
}