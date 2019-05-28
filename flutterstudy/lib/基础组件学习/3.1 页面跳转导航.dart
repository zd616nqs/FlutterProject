import 'package:flutter/material.dart';
//路由跳转参考链接：https://blog.csdn.net/qq_18948359/article/details/82931702

class PushAndPopExample extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        // appBar: new AppBar(title: new Text("标题")),
        body: Center(
          child: FirstPage(),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('第一页')),
      body: Center(
        child: RaisedButton(
          child: Text('点击跳转第二页'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> new SecondPage()
            ));
          },
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('第二页')),
      body: Center(
        child: RaisedButton(
          child: Text('返回第一页'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}


