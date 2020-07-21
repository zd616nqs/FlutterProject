import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("标题")),
        body: Column111(),
      ),
    );
  }
}

class Column111 extends StatelessWidget {
  Widget build(BuildContext context){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text('就流口水的骄傲'),
        Text('士大夫'),
        Text('发热我托管人'),
      ],
    );
  }
}
