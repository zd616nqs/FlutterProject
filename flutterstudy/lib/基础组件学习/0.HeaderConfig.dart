
import 'package:flutter/material.dart';

import '1.1 Material介绍.dart';
import '1.常用类型和基本定义.dart';
import '1.2 TextWidget文本.dart';
import '1.3 ImageWidget图片.dart';
import '1.4 AppBar、TabBar.dart';
import '2.Container、decoration详解.dart';
import '3.ListView.dart';
import '4.GridView.dart';
import '5.RowWidget.dart';
import '6.ColumnWidget.dart';
import '7.StackWidget.dart';
import '8.CardWidget.dart';
import '09.页面跳转导航.dart';
import '10.页面间传值回调.dart';





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
    return TabBarExample();//TabBar组件
    // return ContainerExample(); //Container和decoration
    // return ListViewExample(); //静态列表
    // return DynamicListView(); //动态列表
    // return GridViewExample(); //网格视图
    // return RowExample(); //横向布局 rowWidget组件 
    // return ColumnExample(); //纵向布局 columnWidget
    // return StackExample(); //层叠布局 stackWidget 
    // return CardExample(); //卡片布局 cardView 
    // return PushAndPopExample(); //页面跳转跳回
    // return PushWithPopWithCallbackExample(); //页面间传值、回调
  }
}
