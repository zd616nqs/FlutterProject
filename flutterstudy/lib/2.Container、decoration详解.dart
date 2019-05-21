
import 'package:flutter/material.dart';


//container属性了解  1.edge边距 2.decoration装饰器
class ContainerExample  extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:Container(
            child: Text("测试对齐方式",style:TextStyle(fontSize: 30.0,color: Color.fromRGBO(123, 212, 4, 1))),
            //对齐方式
            alignment: Alignment.bottomCenter,
            //容器高宽
            width: 375,
            //容器高宽
            height: 300,
            //容器背景色
            // color: Colors.blueGrey,
            //约束:优先级比width和height高
            constraints: BoxConstraints(
              minHeight: 50,//最小高度
              minWidth: 50,//最小宽度
              maxHeight: 400,//最大高度
              maxWidth: 400,//最大宽度
            ),

            /* /////////////////边距/////////////////
             * EdgeInsets.only(left: 10.0)  单独设置一个方向的边距
             * EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0)  分别设置一个方向的边距
             * EdgeInsets.fromLTRB(left, top, right, bottom) 单独设置每个方向边距
             * EdgeInsets.all()四个方向统一边距
             * EdgeInsets.symmetric(horizontal: 10.0) 水平方向边距
             * EdgeInsets.symmetric(vertical: 10.0) 垂直方向边距
             */
            padding: EdgeInsets.only(bottom: 10.0),//内边距
            margin: EdgeInsets.only(left: 20.0),//外边距



            //////////////////装饰器//////////////////////////
            //decoration在子child的后面面绘制
            //foregroundDecoration在子child的前面绘制
            decoration: new BoxDecoration(
              //----1.color:颜色,如果这个颜色指定了，最外层的颜色就不能用了，否则会报错，二者不可兼容。
              //----2.image:背景图片,在color之下，gradient之上
              //----3.渐变色，在image之下显示，如果指定了渐变色，color属性就无效了
              gradient: const LinearGradient(
                colors: [Colors.lightBlue,Colors.purple]
              ),
              //----4.boxShadow 阴影---
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,//阴影的颜色
                  offset: Offset(50,100),//阴影偏移量,第一个参数为x轴的偏移量，正值向右；第二个参数为y轴的偏移量，正值向下
                  blurRadius: 20,//高斯模糊的半径，半径越大阴影越模糊，半径越小阴影越清晰
                  spreadRadius: 10//扩散的半径，半径越大阴影面积越大，值越小阴影面积越小
                )
              ],
              //----5.border边框----
              border: Border.all(color: Colors.red, width: 2.0,style: BorderStyle.solid),

              //----6.borderRadius:边框圆角----
              /*
               * 6.1 Radius圆角的3种方式
               * Radius.circular(10.0),//连续圆角
               * Radius.elliptical(10, 20),//椭圆圆角
               * Radius.lerp(Radius.circular(20), Radius.circular(5), 0),//线性差值圆角
               * 
               * 6.2 四个圆角相同1
               * borderRadius: BorderRadius.all(Radius.circular(10))
               * 6.3 四个圆角相同2
               * borderRadius: BorderRadius.circular(10)
               * 6.4 左边两个圆角修改
               * borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
               * 6.5 上边两个圆角修改
               * borderRadius: BorderRadius.vertical(top: Radius.circular(10))
               * 6.6单独设置每个圆角
               * borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                )
               */
              

              //----7.backgroundBlendMode:混合模式，应用于color或gradient属性，如果这两个属性没有设置，则无效
              backgroundBlendMode: BlendMode.darken,
              /*
               * ----8.shape:形状----
               * 区别：
               * (1)BoxShape.rectangle和RoundedRectangleBorder效果上是一样的
               * (2)在Container中shape继承BoxBorder，只能使用BoxShape.rectangle、BoxShape.circle这两种
               * (3)在Material中shape继承ShapeBorder，使用RoundedRectangleBorder、CircleBorder
               * (4)但是BoxBorder继承ShapeBorder
               */
              shape: BoxShape.rectangle
            ),
          )
        ),
      ),
    );
  }
}
  