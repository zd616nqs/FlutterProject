import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '牛青山示例',
      home: Scaffold(
          appBar: AppBar(
            //------设置标题和对齐方式------
            title: Text('标题栏'),
            centerTitle: true, //标题居中，不受左右icon数量影响而偏移位置

            //------设置左侧按钮------
            leading: IconButton(
              icon: Icon(Icons.ac_unit), //1.按钮图标
              tooltip: '这个按钮的作用是分享', //2.按压按钮时的提示文字
              onPressed: () {
                debugPrint('点击了分享按钮');
              },
            ),
            //------设置右侧按钮------
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: '这个按钮的作用是搜索',
                onPressed: () {
                  debugPrint('点击了搜索按钮');
                },
              ),
              IconButton(
                icon: Icon(Icons.menu),
                tooltip: '这个按钮的作用是菜单',
                onPressed: () {
                  debugPrint('点击了菜单按钮');
                },
              ),
            ],
          ),
          body: null),
    );
  }
}

//tab有三个控件: TabBar标签栏  TabView标签视图  TabController标签控制器

class TabBarExample extends StatefulWidget {
  TabBarExample({Key? key}) : super(key: key);

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //------初始化标签控制器------
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            backgroundColor: Colors.yellow[800],
            title: Text('标题栏'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                tooltip: '这个按钮的作用是菜单',
                onPressed: () {
                  debugPrint('点击了菜单按钮');
                },
              ),
            ],
            //------创建7个标签------
            bottom: TabBar(
              /*TabBar 常见属性:
                tabs             显示的标签内容，一般使用Tab对象,也可以是其他的Widget
                controller       TabController 对象
                isScrollable     是否可滚动
                indicatorColor   指示器颜色
                indicatorWeight  指示器高度
                indicatorPadding 底部指示器的Padding
                indicator        指示器decoration，例如边框等
                indicatorSize    指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
                labelColor       选中label颜色
                labelStyle       选中label的Style
                labelPadding     每个label的padding 值
                unselectedLabelColor 未选中label颜色
                unselectedLabelStyle 未选中label的 Style
              */

              //设置选中、未选中颜色
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              //指示器颜色、长度、高度
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5,
              isScrollable: true,

              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_mall), text: "第1个"),
                Tab(icon: Icon(Icons.local_bar), text: "第2个"),
                Tab(icon: Icon(Icons.local_florist), text: "第3个"),
                Tab(icon: Icon(Icons.local_atm), text: "第4个"),
                Tab(icon: Icon(Icons.local_cafe), text: "第5个"),
                Tab(icon: Icon(Icons.local_car_wash), text: "第6个"),
                Tab(icon: Icon(Icons.location_disabled), text: "第7个"),
              ],
            ),
          ),
          //------body初始化对应7个TabBarView视图------
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_mall, size: 150.0, color: Colors.black12),
              Icon(Icons.local_bar, size: 150.0, color: Colors.black12),
              Icon(Icons.local_florist, size: 150.0, color: Colors.black12),
              Icon(Icons.local_atm, size: 150.0, color: Colors.black12),
              Icon(Icons.local_cafe, size: 150.0, color: Colors.black12),
              Icon(Icons.local_car_wash, size: 150.0, color: Colors.black12),
              Icon(Icons.location_disabled, size: 150.0, color: Colors.black12)
            ],
          ),
        ),
      ),
    );
  }
}

//自定义一个tabController
class TabBarExample222 extends StatefulWidget {
  TabBarExample222({Key? key}) : super(key: key);

  @override
  _TabBarExample222State createState() => _TabBarExample222State();
}

class _TabBarExample222State extends State<TabBarExample222>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 7, vsync: this);
    _tabController?.addListener(() {
      //监听选中下标，可以setState操作
      print("选中了${_tabController!.index + 1}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("牛牛牛"),
          bottom: TabBar(
            //设置controller
            controller: this._tabController,
            //设置tabs
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_mall), text: "第1个"),
              Tab(icon: Icon(Icons.local_bar), text: "第2个"),
              Tab(icon: Icon(Icons.local_florist), text: "第3个"),
              Tab(icon: Icon(Icons.local_atm), text: "第4个"),
              Tab(icon: Icon(Icons.local_cafe), text: "第5个"),
              Tab(icon: Icon(Icons.local_car_wash), text: "第6个"),
              Tab(icon: Icon(Icons.location_disabled), text: "第7个"),
            ],
            //设置选中、未选中颜色
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            //指示器颜色、长度、高度
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5,
            isScrollable: true,
          ),
        ),
        //------body初始化对应7个TabBarView视图------
        body: TabBarView(
          controller: this._tabController,
          children: <Widget>[
            Icon(Icons.local_mall, size: 150.0, color: Colors.black12),
            Icon(Icons.local_bar, size: 150.0, color: Colors.black12),
            Icon(Icons.local_florist, size: 150.0, color: Colors.black12),
            Icon(Icons.local_atm, size: 150.0, color: Colors.black12),
            Icon(Icons.local_cafe, size: 150.0, color: Colors.black12),
            Icon(Icons.local_car_wash, size: 150.0, color: Colors.black12),
            Icon(Icons.location_disabled, size: 150.0, color: Colors.black12)
          ],
        ),
      ),
    );
  }
}
