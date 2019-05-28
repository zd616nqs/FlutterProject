import 'package:flutter/material.dart';


//
class MarterialExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //隐藏右上角的debug条幅
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //主题颜色
        primarySwatch: Colors.yellow,
        //高亮颜色(能点击的控件)
        highlightColor: Colors.red,
        //水波纹颜色(能点击的控件)
        splashColor: Colors.white70,
      ),
      

    );
  }
}


/**
 * -------Scaffold属性介绍-------
 * this.appBar：显示在界面顶部的一个 AppBar
 * this.body：当前界面所显示的主要内容
 * this.floatingActionButton： 在 Material 中定义的一个功能按钮
 * this.floatingActionButtonLocation //悬浮按钮位置
 * this.floatingActionButtonAnimator //悬浮按钮在[floatingActionButtonLocation]出现/消失动画
 * this.persistentFooterButtons：固定在下方显示的按钮,显示于[bottomNavigationBar]之上，[body]之下
 * this.drawer：侧边栏控件
 * this.endDrawer
 * this.bottomNavigationBar：显示在底部的导航栏按钮栏
 * this.bottomSheet：底部持久化提示框
 * this.backgroundColor：背景颜色
 * this.resizeToAvoidBottomPadding 弃用，使用[resizeToAvoidBottomInset]
 * this.resizeToAvoidBottomInset 控制界面内容 body是否重新布局来避免底部被覆盖了，比如当键盘显示的时候，重新布局避免被键盘盖住内容
 * this.primary 是否显示到底部，默认为true将显示到顶部状态栏
 */

/**
 * -------Scaffold.of 使用说明-------
 *  Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('Hello!')));
 */