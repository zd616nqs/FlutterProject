import 'package:flutter/material.dart';



//image组件使用
class ImageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '牛青山示例',
      home: Scaffold(
        
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.purple,
            
            /*
             * 图片控件创建
             * Image.asset()工程资源文件夹读取
             * Image.file()本地文件夹读取
             * Image.network()网络链接加载图片
             * Image.memory() 内存读取图片
             */
            child: Image.network(
              //参数1：资源文件链接
              'https://tva2.sinaimg.cn/crop.0.0.499.499.180/5a069252tw1egot41azscj20dw0dwwhm.jpg',
              fit: BoxFit.none,
              alignment: Alignment.center,
              
              color: Colors.yellow,
              colorBlendMode: BlendMode.darken,
              repeat: ImageRepeat.repeat,
              ),            
          )
        ),
      ),
    );
  }
}