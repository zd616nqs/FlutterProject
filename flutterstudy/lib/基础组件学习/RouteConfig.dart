
import 'package:flutter/material.dart';



import '1.0 常用类型和基本定义.dart';
import '2.1 Material、Scaffold介绍.dart';
import '2.5 TextWidget文本.dart';
import '2.3 ImageWidget图片.dart';
import '3.2.Container、decoration详解.dart';
import '3.1 ListView.dart';
import '3.3 GridView.dart';
import '3.4 RowWidget.dart';
import '3.5 ColumnWidget.dart';
import '3.7 StackWidget.dart';
import '3.8 CardWidget.dart';
import '2.4 AppBar、TabBar.dart'; 
import '3.9 Drawer抽屉.dart';
import '2.6 BottomNavigationBar底部导航栏.dart';
import '4.1 页面跳转导航.dart';
import '4.2 页面间传值回调.dart';
import '3.6 Warp组件(流布局).dart';
import '2.2 stateFullWidget.dart';
import '2.7 各种按钮.dart';
import '3.10 TextField组件.dart';

class BaseWidgetStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _example();
  }
  _example(){
    // return HelloWorld(); //HelloWorld 
    // return TextWidgetExample(); //text组件
    // return ImageTest(); //图片组件
    // return AppBarExample();//AppBar组件
    // return TabBarExample();//TabBar组件
    // return TabBarExample222();//自定义tabController
    // return DrawerExample();//抽屉
    // return BtnExample();//各种按钮
    // return BottomNavgationBarDemo();//底部bar
    // return ContainerExample(); //Container和decoration
    // return StaticListExample(); //静态列表
    // return DynamicListView(); //动态列表
    // return GridViewExample(); //网格视图
    // return RowExample(); //横向布局 rowWidget组件 
    // return ColumnExample(); //纵向布局 columnWidget
    // return WrapExample();
    // return StateFullExample();
    // return StackExample(); //层叠布局 stackWidget 
    // return CardExample(); //卡片布局 cardView 
    return TextFieldExample();
    // return PushAndPopExample(); //页面跳转跳回
    // return PushWithPopWithCallbackExample(); //页面间传值、回调
  }
}
