import 'package:flutter/material.dart';
import 'package:flutter_tests/model/moruka_data.dart';
class SubPage extends StatelessWidget {
  final  morucar_list;

  const SubPage({Key key, this.morucar_list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _MorukaData = new MorukaData();
      List morucar_lists=_MorukaData.morucar_lists(morucar_list);

    print(morucar_lists);






    return new Scaffold(
      appBar: new AppBar(
        title: new Text(morucar_lists[0]),
      ),
        body: new Stack(
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(morucar_lists[1]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )
    );
  }
}