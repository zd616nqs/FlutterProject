import 'package:flutter/material.dart';



class AppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '牛青山示例',
      home: Scaffold(
        appBar: AppBar(
          //------设置标题和对齐方式------
          title: Text('标题栏'),
          centerTitle: true,//标题居中，不受左右icon数量影响而偏移位置

          //------设置左侧按钮------
          leading: IconButton(
            icon: Icon(Icons.ac_unit),//1.按钮图标
            tooltip: '这个按钮的作用是分享',//2.按压按钮时的提示文字
            onPressed: (){
              debugPrint('点击了分享按钮');
            },
          ),
          //------设置右侧按钮------
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '这个按钮的作用是搜索',
              onPressed: (){
                debugPrint('点击了搜索按钮');
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: '这个按钮的作用是菜单',
              onPressed: (){
                debugPrint('点击了菜单按钮');
              },
            ),
          ],
        ),
        body: null
      ),
    );
  }
}


//tab有三个控件: TabBar标签栏  TabView标签视图  TabController标签控制器
class TabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //------初始化标签控制器------
      home:DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.yellow[800],
            title: Text('标题栏'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                tooltip: '这个按钮的作用是菜单',
                onPressed: (){
                  debugPrint('点击了菜单按钮');
                },
              ),
            ],
            //------创建3个标签------
            bottom: TabBar(
              //设置选中、未选中颜色
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              //指示器颜色、长度、高度
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5,
              
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_mall)),
                Tab(icon: Icon(Icons.local_bar)),
                Tab(icon: Icon(Icons.local_florist)),
              ],
            ),
          ),
          //------body初始化对应三个TabBarView视图------
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_mall,size: 150.0,color: Colors.black12),
              Icon(Icons.local_bar,size: 150.0,color: Colors.black12),
              Icon(Icons.local_florist,size: 150.0,color: Colors.black12)
            ],
          ),
        ),
      ),
    );

  }
}