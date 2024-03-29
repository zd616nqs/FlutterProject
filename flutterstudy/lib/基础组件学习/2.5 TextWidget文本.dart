import 'package:flutter/material.dart';




//hello world
class HelloWorld extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '牛青山示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('大标题'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('hello world11'),
              Text('hello world22'),
              Text('hello world33'),
            ],
          )
        ),
      ),
    );
  }
}


//Text组件
class TextWidgetExample extends StatelessWidget {
  final String imageUrl1 = 'https://img.zcool.cn/community/01ca0b559162de6ac72532647310d7.jpg@1280w_1l_2o_100sh.jpg';
  final String imageUrl2 = 'https://img.zcool.cn/community/019dda559162de6ac7253264259bbc.jpg@1280w_1l_2o_100sh.jpg';
  final String imageUrl3 = 'https://img.zcool.cn/community/012ab85591636b32f87598b59e6283.jpg@1280w_1l_2o_100sh.jpg';
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 200,child: Container(color: Colors.red)),
                //---------1.使用系统样式---------
                Text(
                  '第一条数据',
                  style:Theme.of(context).textTheme.headline1
                  // style: Theme.of(context).textTheme.subtitle,
                ),
                


                SizedBox(height: 80,child: Container(color: Colors.yellow)),
                //---------2.Text组件---------
                Text(
                  //文字
                  "第二条数据",
                  //对齐方式：left/right/center/justify/start/end
                  textAlign: TextAlign.center,
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
                ),
                
                
                SizedBox(height: 30,child: Container(color: Colors.yellow)),
                //---------3.RichText富文本---------
                RichText(
                  text: TextSpan(
                    text: '牛青山',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: '到此',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        )
                      ),
                      TextSpan(
                        text: '一游',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 25.0,
                          fontWeight: FontWeight.normal,
                        )
                      ),
                      
                    ]
                  ),
                )
                
              ],
            ),
          ),
        )


      ),
    );
  }
}

