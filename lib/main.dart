import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 描画したいWidgetを記述する
    print(' building...');
    return MaterialApp(
      title: 'Startup Name Generator',
      //タイトル(青の部分)
      home: RandomWords(),
      //クラスランダムワードを呼び出し
    );
  }

}


class RandomWords extends StatefulWidget {


  @override
  _RandomWordsState createState() => _RandomWordsState();
  //ビルド後に呼ばれるメソッド (アプリの準備が完了したらってこと？)
}

class _RandomWordsState extends State<RandomWords>  {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);


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
  void didUpdateWidget(RandomWords oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget-> 再ビルドされる必要がある場合に呼ばれる');
  }
  @override
  void dispose() {
    super.dispose();
    print('dispose->  画面破棄時に出力される？');
  }

////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('名前生成アプリ'),
      ),
      body: _buildSuggestions(),

    );

  }


  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );

  }
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),

        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 1; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }
}
