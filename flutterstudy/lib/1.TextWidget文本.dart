import 'package:flutter/material.dart';



//Text组件
class TextWidgetExample extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            //文字
            "我是牛青山，哈哈哈哈哈哈",
            //对齐方式：left/right/center/justify/start/end
            textAlign: TextAlign.justify,
            //裁剪方式：clip直接裁剪文字   ellipsis裁剪文字后加... fade从上到下颜色渐变
            overflow: TextOverflow.clip,
            style: TextStyle(
              //字号：最好为float型，int不报错
              fontSize: 20,
              //颜色
              color: Color.fromRGBO(255, 192, 203, 1),
              //横线： lineThrough删除线 overline居上  underline下划线
              decoration: TextDecoration.lineThrough ,
              //横线样式： solid单横线  double双横线 dotted点线 dashed虚线 wavy正弦曲线
              decorationStyle: TextDecorationStyle.wavy,
            ),
          )
        ),
      ),
    );
  }
}