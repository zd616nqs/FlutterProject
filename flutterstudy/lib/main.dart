import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '3.ListView.dart';
import '4.GridView.dart';
import '5.RowWidget.dart';
import '6.ColumnWidget.dart';
import '7.StackWidget.dart';
import '8.CardWidget.dart';
import '09.页面跳转导航.dart';
import '10.页面间传值回调.dart';

// void main() => runApp(NQSTest());
// void main() => runApp(TextWidgetExample());
// void main() => runApp(ImageTest());
// void main() => runApp(ContainerExample());

//静态列表
// void main() => runApp(ListViewExample());

//动态列表
// void main() => runApp(DynamicListView(
//   items: List<String>.generate(100, (i)=>'第${i}行'))
// );

//网格视图
// void main() => runApp(GridViewExample());

//rowWidget组件 横向布局
// void main() => runApp(RowExample());

//columnWidget 纵向布局
// void main() => runApp(ColumnExample());

//stackWidget 层叠布局
// void main() => runApp(StackExample());

//cardView 卡片布局
// void main() => runApp(CardExample());

//页面跳转跳回
// void main() => runApp(PushAndPopExample());

//页面间传值、回调
void main() => runApp(PushWithPopWithCallbackExample());





//hello world
class NQSTest extends StatelessWidget {
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








  






