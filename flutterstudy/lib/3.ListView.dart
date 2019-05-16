import 'package:flutter/material.dart';


//----------1.静态列表listview-----------------
  class ListViewExample extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("listview标题"),),
        body: ListView(
          //列表方向，横向/竖向
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('闹钟icon'),
            ),
            ListTile(
              leading: Icon(Icons.airplanemode_active),
              title: Text('飞机icon'),
            ),
            Image.network(
              'https://tva2.sinaimg.cn/crop.0.0.499.499.180/5a069252tw1egot41azscj20dw0dwwhm.jpg',
              height: 100,
              alignment: Alignment.centerLeft,
              repeat: ImageRepeat.repeatX,
              )
          ],
        )
      ),
    );
  }
}



//----------2.动态列表listview-----------------
class DynamicListView extends StatelessWidget {
  final List<String> items;
  DynamicListView({Key key,@required this.items}):super(key:key);//接收参数

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('大标题'),
        ),
        body: ListView.builder(
          itemCount: items.length,//总共多少条
          itemBuilder:(context,index) {
            return ListTile (
              title: Text('${items[index]}'),//每行取值
            );
          },
        )
      ),
    );
  }
}