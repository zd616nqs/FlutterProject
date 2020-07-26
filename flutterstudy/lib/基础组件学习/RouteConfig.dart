import 'dart:core';

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
import '4.3 stream.dart';

class BaseWidgetStudy extends StatelessWidget {

  Map dataMap = {
    "HelloWorld": HelloWorld(),
    "text组件": TextWidgetExample(),
    "图片组件": ImageTest(),
    "AppBar组件": AppBarExample(),
    "TabBar组件": TabBarExample(),
    "自定义tabController": TabBarExample222(),
    "抽屉": DrawerExample(),
    "各种按钮": BtnExample(),
    "底部bar": BottomNavgationBarDemo(),
    "Container和decoration": ContainerExample(),
    "静态列表": StaticListExample(),
    "动态列表": DynamicListView(),
    "网格视图": GridViewExample(),
    "横向布局 rowWidget组件 ": RowExample(),
    "纵向布局 columnWidget": ColumnExample(),
    "自动换行wrap": WrapExample(),
    "有状态组件": StateFullExample(),
    "层叠布局 stackWidget": StackExample(),
    "卡片布局 cardView ": CardExample(),
    "输入框": TextFieldExample(),
    "页面跳转跳回": PushAndPopExample(),
    "页面间传值、回调": PushWithPopWithCallbackExample(),
    "监听变化的stream": StreamExample(),
  };




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _example(),
      ),
    );
  }

  _example() {
    return Container(
      alignment: Alignment.center,
      child: ListView.builder(
        itemCount: dataMap.length, //总共多少条
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              height: 40,
              color: (index%2==1)?Colors.green[300]:Colors.yellow[300],
              alignment: Alignment.center,
                child: Text(dataMap.keys.toList()[index]),
              ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=> dataMap.values.toList()[index]
            ));
            },
        
      );
    },
      ),
    );
}
}
