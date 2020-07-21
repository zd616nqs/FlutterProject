import 'package:flutter/material.dart';


/**
 * 本地图片的放置、声明引用、使用
 * 1.放置，fultter遵循了基于像素密度的放置格式，比如声明了一个放图片的父文件夹images，倍图放在如下的路径
 * images/my_icon.png       // Base: 1.0x image
 * images/2.0x/my_icon.png  // 2.0x image
 * images/3.0x/my_icon.png  // 3.0x image
 * 2.声明使用
 * 在pubspec.yaml文件中声明引人的图片
 * assets:
 *   - images/my_icon.png  声明单个文件
 *   - images/   声明整个文件夹
 * 
 * 3.使用
 * 方法一：AssetImage("images/my_icon.jpeg");
 * 方法二：Image.asset("images/my_icon.png");
 */



//image组件使用
class ImageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _example();
  }

  _example(){
    return MaterialApp(
      
      
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              ImageExample1(),
              ImageExample2()
            ],
          ),
        ),
      ),
    );
  }
  
}

class ImageExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
          fit: BoxFit.none,//cover：填充满容器但是不变形，可能会裁切   fill：拉伸填满，会变形
          alignment: Alignment.center,
          
          color: Colors.yellow,
          colorBlendMode: BlendMode.exclusion,
          repeat: ImageRepeat.repeatX,
        ),            
      ),
    );
  }
  
}

//带圆角的图片
class ImageExample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            "https://tva2.sinaimg.cn/crop.0.0.499.499.180/5a069252tw1egot41azscj20dw0dwwhm.jpg",
            fit: BoxFit.cover,
            //Image组件的width和height只有在ClipOval组件内才生效，如果不手动设定高宽，该组件的高宽会根据图片的高度变成椭圆形
            width: 150,
            height: 150,
            ),
        ),
      ),
    );
  }
  
}
