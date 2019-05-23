import 'package:flutter/material.dart';



class BottomNavigationBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '牛青山示例',
      home: Scaffold(
        appBar: AppBar(title: Text('标题栏')),
        body: null,
        //------底部导航栏------
        bottomNavigationBar: BottomNavgationBarDemo(),
      ),
    );
  }
}


//底部导航栏（使用有状态的widget）
class BottomNavgationBarDemo extends StatefulWidget {
  @override
  _BottomNavgationBarDemoState createState() => _BottomNavgationBarDemoState();
}

class _BottomNavgationBarDemoState extends State<BottomNavgationBarDemo> {
  //当前选择下标
  int _currentIndex = 0;
  //点击事件更新state
  void _onTapHandel(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
