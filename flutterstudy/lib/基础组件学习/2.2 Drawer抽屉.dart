import 'package:flutter/material.dart';



class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: '牛青山示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('标题栏'),
          //------设置左侧按钮------
          leading: Builder(
            builder: (context)=>IconButton(
              icon: Icon(Icons.call_split),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        body: null,
        //------1.填充一个container------
        // drawer: Test1(),
        //------2.填充一个listView------
        drawer: Test2(),
      ),
    );
  }
}


//1.填充一个container
class Test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white54,
        padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('个人中心',style: TextStyle(fontSize: 20.0)),
            Text('订单信息',style: TextStyle(fontSize: 20.0)),
            Text('设置',style: TextStyle(fontSize: 20.0, )),
          ],
        ),
    );
  }
}

//2.填充一个listView
class Test2 extends StatelessWidget {
  final String headerImg = 'https://tva2.sinaimg.cn/crop.0.0.499.499.180/5a069252tw1egot41azscj20dw0dwwhm.jpg';
  final String bgImg = 'https://img.zcool.cn/community/015b57554e1a24000000875c4b55ab.jpg@1280w_1l_2o_100sh.jpg';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          //------设置抽屉的表头------
          DrawerHeader(
            child: Text('来来来小牛仔',style: TextStyle(fontSize: 30.0)),
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
          ),
          //------设置一个用户信息的表头------
          UserAccountsDrawerHeader(
            accountName: Text('来来来小牛仔',style: TextStyle(fontSize: 20.0)),
            accountEmail: Text('nqs673@163.com',style: TextStyle(fontSize: 15.0)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(headerImg),
            ),
            //设置背景图片(背景色、背景图、填充方式)
            decoration: BoxDecoration(
              color: Colors.yellow[800],//decoration容器的背景色
              image: DecorationImage(
                image: NetworkImage(bgImg),//背景图片
                fit: BoxFit.fill,//填充模式
                colorFilter: ColorFilter.mode(//颜色过滤器
                  Colors.orange[900], //叠加颜色
                  BlendMode.hardLight,//叠加模式
                  )
              )
            ),
          ),
          ListTile(
            title: Text('个人中心',textAlign: TextAlign.right,style: TextStyle(fontSize:16.0)),
            trailing: Icon(Icons.account_box),
          ),
          ListTile(
            title: Text('订单信息',textAlign: TextAlign.right,style: TextStyle(fontSize:16.0)),
            trailing: Icon(Icons.menu),
          ),
          ListTile(
            title: Text('设置',textAlign: TextAlign.right,style: TextStyle(fontSize:16.0)),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('关闭',textAlign: TextAlign.right,style: TextStyle(fontSize:16.0)),
            trailing: Icon(Icons.close),
            //------设置关闭action------
            onTap: ()=> Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

