import 'package:flutter/material.dart';


/**
 * 更新listview，有两种方式:
 *    1.在setState方法中新建一个list，把旧list数据拷贝给新的list
 *    2.使用ListView.Builder来构造
 * 当有大量的数据时，推荐、高效的方法时使用ListView.Builder来构造，这样只会动态的修改部分数据，
 */




//----------1.静态列表listview-----------------

class StaticListExample extends StatelessWidget {

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
  Widget build(BuildContext context){
    return MaterialApp(
      title: '动态列表',
      home: ListView111(
        items: List<String>.generate(100, (i)=>'第${i}行'))
      );
  } 
}

class ListView111 extends StatelessWidget {
  final List<String> items;
  ListView111({Key key, this.items}):super(key:key);//接收参数

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('大标题'),
        ),

        //ListView.builder 接受两个主要参数：列表的初始长度，和一个 ItemBuilder 方法
        //ItemBuilder 方法和 cellForItemAt 代理方法非常类似，它接受一个位置，并且返回在这个位置上你希望渲染的 cell
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