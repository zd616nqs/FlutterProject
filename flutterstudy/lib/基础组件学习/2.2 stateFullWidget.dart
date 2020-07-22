import 'package:flutter/material.dart';
import 'dart:math';

class StateFullExample extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("标题")),
        // body: Nqs111(),
        body: Nqs222(),
      ),
    );
  }
}

class Nqs111 extends StatefulWidget {
  Nqs111({Key key}) : super(key: key);

  @override
  _Nqs111State createState() => _Nqs111State();
}

class _Nqs111State extends State<Nqs111> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Column(
        children: <Widget>[
          SizedBox(height: 60),
          ListTile(title: Text("${this.countNum}")),
          SizedBox(height: 60),
          RaisedButton(
              child: Text("按钮"),
              onPressed: () {
                this.setState(() {
                  this.countNum++;
                });
              }),
        ],
      ),
    );
  }
}

class Nqs222 extends StatefulWidget {
  Nqs222({Key key}) : super(key: key);

  @override
  _Nqs222State createState() => _Nqs222State();
}

class _Nqs222State extends State<Nqs222> {
  List listData = new List();
  @override 
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 30, child: Container(color: Colors.red)),
        Container(
          color: Colors.yellow,
          child: Column(
            children: this.listData.map((tempWidget) {
              return Container(
                width: 300,
                height: 30,
                color: getRandomColor(),
                child: tempWidget,
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 30, child: Container(color: Colors.purple)),
        RaisedButton(
            child: Text("增加"),
            onPressed: () {
              this.setState(() {
                this.listData.add(Text("新增数据  ${this.listData.length}"));
              });
            }),
        RaisedButton(
            child: Text("删除"),
            onPressed: () {
              this.setState(() {
                this.listData.removeRange(this.listData.length-1, this.listData.length);
              });
            }),
      ],
    );
  }
}

Color getRandomColor() {
  return Color.fromARGB(255, Random.secure().nextInt(255),
      Random.secure().nextInt(255), Random.secure().nextInt(255));
}
