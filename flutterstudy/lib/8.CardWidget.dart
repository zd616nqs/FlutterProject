import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("标题")),
        body: Center(
          child: Card111(),
        ),
      ),
    );
  }
}

class Card111 extends StatelessWidget {
  Widget build(BuildContext context){

    var stackView = Stack(
      //设置子元素的相对对齐方式:层叠的第二个元素相对于第一个元素的位置
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage('https://tva2.sinaimg.cn/crop.0.0.499.499.180/5a069252tw1egot41azscj20dw0dwwhm.jpg') ,
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(10.0),
          child: Text('来来来小牛仔')
        ),
        //Positioned指定位置的控件，绝对位置
        Positioned(
          top: 10,
          left: 10,
          child: Text('111111',style: TextStyle(fontSize: 30,color: Colors.yellow)),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Text('222222',style: TextStyle(fontSize: 30,color: Colors.purple)),
        ),
      ],
    );

    return stackView;
  }
}
