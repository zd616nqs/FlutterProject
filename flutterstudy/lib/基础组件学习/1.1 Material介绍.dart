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

