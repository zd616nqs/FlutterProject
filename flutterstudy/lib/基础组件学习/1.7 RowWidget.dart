import 'package:flutter/material.dart';


class RowExample extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("标题")),
        // body:StaticRow(),//静态布局
        // body: DynamicRow(),//动态布局
        body: DynamicAndStaticRow(),//动态静态混合布局
      ),
    );
  }
}

//静态布局
class StaticRow extends StatelessWidget {
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: (){},
          color: Colors.purple,
          child: Text('第1个按钮')
        ),
        RaisedButton(
          onPressed: (){},
          color: Colors.red,
          child: Text('第2个按钮')
        ),
        RaisedButton(
          onPressed: (){},
          color: Colors.lightBlue,
          child: Text('第3个按钮')
        ),
      ],
    );
  }
}

//动态布局
class DynamicRow extends StatelessWidget {
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        Expanded(
          child: RaisedButton(
            onPressed: (){},
            color: Colors.purple,
            child: Text('第1个按钮')
          ),
        ),
        Expanded(
          child: RaisedButton(
            onPressed: (){},
            color: Colors.red,
            child: Text('第2个按钮')
          ),
        ),
        Expanded(
          child: RaisedButton(
            onPressed: (){},
            color: Colors.lightBlue,
            child: Text('第3个按钮')
          ),
        ),
      ],
    );
  }
}

//动态静态混合布局
class DynamicAndStaticRow extends StatelessWidget {
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: (){},
          color: Colors.purple,
          child: Text('第1个按钮')
        ),
        Expanded(
          child: RaisedButton(
            onPressed: (){},
            color: Colors.red,
            child: Text('第2个按钮')
          ),
        ),
        RaisedButton(
          onPressed: (){},
          color: Colors.lightBlue,
          child: Text('第3个按钮')
        ),
      ],
    );
  }
}