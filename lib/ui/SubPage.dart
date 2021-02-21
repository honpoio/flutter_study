import 'package:flutter/material.dart';
import 'package:flutter_tests/repository/moruka_data.dart';
class SubPage extends StatelessWidget {
  final  morucar_numbers;

  const SubPage({Key key, this.morucar_numbers, String numbers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int morucar_number=int.parse(morucar_numbers);
    //myhomepageから送られてくるparameterをinit型に変換
    var _MorukaData = new MorukaData();
      var morucar_model_list = _MorukaData.morucar_lists();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(morucar_model_list[morucar_number].name),
      ),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(morucar_model_list[morucar_number].image_url),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )
    );
  }
}