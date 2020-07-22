import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("标题")),
        body: Wrap111(),
      ),
    );
  }
}

class Wrap111 extends StatelessWidget {
  Widget build(BuildContext context){
    var wrap = Container(
      width: 300,
      height:600,
      color: Colors.pink,
      child: Wrap(
        /*
        direction         主轴的方向，默认水平
        alignment         主轴的对其方式
        spacing           主轴方向上的间距
        textDirection     文本方向
        verticalDirection 定义了 children 摆放顺序，默认是 down，见 Flex 相关属性介绍。
        runAlignment      run的对齐方式。run 可以理解为新的行或者 列，如果是水平方向布局的话，run 可以理解 为新的一行
        runSpacing        run的间距
        */

        spacing: 10,
        runSpacing: 10,
        children: <Widget>[
          MyBtn("昆仑决"),
          MyBtn("第三方士大夫"),
          MyBtn("水电费位"),
          MyBtn("柔荑花"),
          MyBtn("儿童椅"),
          MyBtn("玩4"),
          MyBtn("入桃花源"),
          MyBtn("问题我"),
          MyBtn("我"),
          MyBtn("玩儿"),
        ],
      ),
    );

    return wrap;
  }
}

class MyBtn extends StatelessWidget {
  final String title;

  const MyBtn(this.title,{Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(title),
      textColor: Colors.red,
      onPressed: (){
        print("点击了${title}");
      },
    );
  }
  
}
