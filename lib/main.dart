
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 描画したいWidgetを記述する
    SystemChannels.lifecycle.setMessageHandler((message){
      print('<SystemChannels.lifecycle> $message');
      return Future<String>.value();
    });
    print('firstbuilding...');


    return MaterialApp(
      title: 'Startup Name Generator',
      //タイトル(青の部分)
      home: RandomWords(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new RandomWords(),
        '/subpage': (BuildContext context) => new SubPage()
      }
    );
  }

}


class RandomWords extends StatefulWidget {

  @override
  _RandomWordsState createState() => _RandomWordsState();
  //ビルド後に呼ばれるメソッド (アプリの準備が完了したらってこと？)
}

class _RandomWordsState extends State<RandomWords>   {

  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  @override
  void initState(){
    super.initState();
    print('initState->  Widgetツリーの初期化');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies->　依存関係をいじってるクラス？');
  }

  @override
  Widget build(BuildContext context) {
    print(' secoundbuilding...');
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text(
                "$_text",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500
                ),
              ),
              new TextField(
                enabled: true,
                //enabledは活性、非活性の切り替えに利用します。<=試しにfalseにすると入力できなくなった
                style: TextStyle(color: Colors.red),
                onChanged: _handleText,
                //onChanged <=即座に反映する
              ),

              RaisedButton(onPressed: () {
                Navigator.of(context).pushReplacementNamed('/subpage');
              })
            ],
          ),
        ),
      ),

    );
  }

  @override
  void didUpdateWidget(RandomWords oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget-> 再ビルドされる必要がある場合に呼ばれる');
  }
  @override
  void setState(fn) {
    print("setState");
    super.setState(fn);
  }
  @override
  void deactivate() {
    print("deactivate->  StateをWidgetツリーから削除する");
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose->  Stateオブジェクト削除時に呼び出される');
    super.dispose();
  }
  
}




class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('  threebuilding...');
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('sub'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              RaisedButton(onPressed: (){
                Navigator.of(context).pushReplacementNamed('/home');
              })
            ],
          ),
        ),
      ),
    );
  }
}
