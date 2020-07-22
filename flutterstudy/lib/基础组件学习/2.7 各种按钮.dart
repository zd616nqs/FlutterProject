import 'package:flutter/material.dart';

class BtnExample extends StatelessWidget {
  //---------------普通按钮(底部有阴影)----------------
  var raisedBtn = RaisedButton(
    /*
      onPressed          必填参数，按下按钮时触发的回调，接收一个 方法，传 null 表示按钮禁用，会显示禁用相关 样式
      child              文本控件
      textColor          文本颜色
      color              按钮的颜色
      disabledColor      按钮禁用时的颜色 (把onPress置null就行)
      disabledTextColor  按钮禁用时的文本颜色 (把onPress置null就行)
      splashColor        点击按钮时水波纹的颜色
      highlightColor     点击(长按)按钮后按钮的颜色
      elevation          阴影的范围，值越大阴影范围越大
      padding            内边距
      shape              设置按钮的形状 圆角值
    */
    child: Text("普通按钮"),
    onPressed: () {
      print("点击普通按钮");
    },
    textColor: Colors.pink[300],
    color: Colors.green[300],
    splashColor: Colors.yellow,
    highlightColor: Colors.orangeAccent[500],
    elevation: 20,
    disabledColor: Colors.blue,
    disabledTextColor: Colors.black45,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );

  //--------------扁平化按钮--------------
  var flatBtn = FlatButton(
    child: Text("扁平化按钮"),
    color: Colors.orange[400],
    textColor: Colors.white,
    onPressed: () {
      print("");
    },
  );

  //-------------线框按钮--------------
  var outlineBtn = OutlineButton(
    child: Text("扁平化按钮"),
    color: Colors.yellow[200],
    textColor: Colors.orange,
    onPressed: () {},
  );

  //------------图标按钮-------------
  var iconBtn = IconButton(
      icon: Icon(Icons.accessible),
      onPressed: () {
        print("object");
      });

  //------------按钮组--------------
  var btnBar = ButtonBar(
    children: <Widget>[
      RaisedButton(child: Text("登录"), onPressed: () {}),
      RaisedButton(child: Text("注册"), onPressed: () {}),
    ],
  );

  //----------浮动按钮-----------
  var floatingActionBtn = FloatingActionButton(
    child: Icon(Icons.add,color: Colors.green[300],size: 40),
    onPressed: (){
      print("");
    },
  );

  //----------自定义按钮---------
  var nqsBtn = NqsBtn(
    width: 120.0,
    height: 50.0,
    text: "来来来小牛仔",
    onPress: (){
      print("点击自定义按钮");
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("导航栏"),
          ),

          //浮动按钮
          floatingActionButton: floatingActionBtn,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,



          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 375,
                height: 10,
                color: Colors.pink,
              ),
              //普通按钮
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 60,
                    child: raisedBtn,
                  ),
                ],
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: 130,
                    height: 80,
                    child: flatBtn,
                  ),
                ],
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 120,
                    height: 60,
                    child: outlineBtn,
                  ),
                ],
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 120,
                    height: 20,
                    child: iconBtn,
                  ),
                ],
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[btnBar],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  nqsBtn
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

//自定义按钮
class NqsBtn extends StatelessWidget {
  final text;
  final onPress;
  final width;
  final height;
  const NqsBtn({this.text = "", this.onPress = null,this.width,this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: this.height,
        width: this.width,
        child: RaisedButton(
          child: Text(this.text),
          onPressed: this.onPress,
        )
      ),
    );
  }
}
