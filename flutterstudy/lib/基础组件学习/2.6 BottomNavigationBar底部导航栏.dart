import 'package:flutter/material.dart';

class BottomNavgationBarDemo extends StatefulWidget {
  BottomNavgationBarDemo({Key key}) : super(key: key);

  @override
  _BottomNavgationBarDemoState createState() => _BottomNavgationBarDemoState();
}

class _BottomNavgationBarDemoState extends State<BottomNavgationBarDemo> {

  //当前选择下标
  int _currentIndex = 0;
  //页面数据源
  List _pages = [
    PageA(),
    PageB(),
    PageC(),
    PageD(),
  ];
  //点击事件更新state
  void _onTapHandel(int index) {
    setState(() {
      _currentIndex = index;
      print("当前选中第${_currentIndex + 1}个");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("标题")),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        /*
          items        List<BottomNavigationBarItem> 底 部 导 航 条按钮集合
          iconSize     icon大小
          currentIndex 默认选中第几个
          onTap        选中变化回调函数
          fixedColor/selectedItemColor   选中的颜色
          type         BottomNavigationBarType.fixed  BottomNavigationBarType.shifting
      */

        //当item超过3个时，会有显示问题，需要设置对应的type使其正常显示
        type: BottomNavigationBarType.fixed,
        //item勾选颜色，fixedColor设置之后有同样效果
        selectedItemColor: Colors.green,
        //当前选中下标
        currentIndex: _currentIndex,
        //选中的事件
        onTap: _onTapHandel,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('探索'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('历史'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('我的'),
          )
        ],
      ),
      ),
    );
  }
}





class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.yellow,
      ),
    );
  }
}

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.pinkAccent,
      ),
    );
  }
}

class PageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.purple,
      ),
    );
  }
}
class PageD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.green,
      ),
    );
  }
}
