import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("标题")),
        body: Center(
          child: Stack111(),
        ),
      ),
    );
  }
}

class Stack111 extends StatelessWidget {
  Widget build(BuildContext context) {
    var stackView = Stack(
      //设置子元素的相对对齐方式:层叠的第二个元素相对于第一个元素的位置
      // alignment: const FractionalOffset(0.8, 0.5),
      children: <Widget>[
        Align(
            alignment: Alignment(0, 0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://tva2.sinaimg.cn/crop.0.0.499.499.180/5a069252tw1egot41azscj20dw0dwwhm.jpg'),
              radius: 100.0,
            )),
        Align(
            alignment: Alignment(0, 0),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                padding: EdgeInsets.all(10.0), //child组件相对于container的内边距
                child: Text('来来来小牛仔'))),
        Align(
          alignment: Alignment(1, 0.7),
          child: Icon(Icons.access_alarm),
        ),
        //Align 指定相对位置
        Align(
          alignment: Alignment(-1, 0),
          child: Icon(Icons.account_box),
        ),

        //Positioned指定位置的控件，绝对位置
        Positioned(
          top: 10,
          left: 10,
          child: Text('111111',
              style: TextStyle(fontSize: 30, color: Colors.yellow)),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Text('222222',
              style: TextStyle(fontSize: 30, color: Colors.purple)),
        ),
      ],
    );

    return Container(
      width: 300,
      height: 500,
      color: Colors.brown,
      child: stackView,
    );
  }
}
