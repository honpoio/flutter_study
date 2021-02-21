import 'package:flutter/material.dart';
import 'package:flutter_tests/ui/SubPage.dart';

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
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("mypage"),
      //  widget.title
      ),

      body: ListView(
              children: <Widget>[

                Card(
                  child: Container(
                    height: 300,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                              color: Colors.white,
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/abe.png',
                                    fit:BoxFit.fill,
                                  ),
                                ],
                              ))),
                      Positioned(
                          top: 20,
                          left: 0,
                          right: 0,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Text('abe',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white),
                                    textAlign: TextAlign.center),
                                RaisedButton(
                                    child: const Text('Button'),
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context,) => SubPage(
                                            morucar_numbers: "0",
                                          ),
                                        ),
                                      );
                                })
                              ],
                            ),
                          )),

                    ],
                    ),
                  ),

            ),

            Card(
              child:InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubPage(
                        morucar_numbers: "1",
                      ),
                    ),
                  );
                },

                child: Container(
                  height: 300,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/choco.png',
                                  fit:BoxFit.fill,
                                ),
                              ],
                            ))),
                    Positioned(
                        top: 20,
                        left: 0,
                        right: 0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text('choco',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        )),

                  ],
                  ),
                ),
              ),
            ),

            Card(
              // semanticContainer: true,
              // clipBehavior: Clip.antiAliasWithSaveLayer,
              child:InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubPage(
                        morucar_numbers: "2",
                      ),
                    ),
                  );
                },

                child: Container(
                  height: 300,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/didy.png',
                                  fit:BoxFit.fill,
                                ),
                              ],
                            ))),
                    Positioned(
                        top: 20,
                        left: 0,
                        right: 0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text('didy',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        )),

                  ],
                  ),
                ),
              ),
            ),

            Card(
              child:InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubPage(
                        morucar_numbers: "3",
                      ),
                    ),
                  );
                },

                child: Container(
                  height: 300,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/shiromo.png',
                                  fit:BoxFit.fill,
                                ),
                              ],
                            ))),
                    Positioned(
                        top: 20,
                        left: 0,
                        right: 0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text('shiromo',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        )),

                  ],
                  ),
                ),
              ),
            ),

            Card(
              child:InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubPage(
                        morucar_numbers: "4",
                      ),
                    ),
                  );
                },

                child: Container(
                  height: 300,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/poteto.png',
                                  fit:BoxFit.fill,
                                ),
                              ],
                            ))),
                    Positioned(
                        top: 20,
                        left: 0,
                        right: 0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text('poteto',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                  textAlign: TextAlign.center),

                            ],
                          ),
                        )),

                  ],
                  ),
                ),
              ),
            ),

          ]
      ),
    );

  }


}
