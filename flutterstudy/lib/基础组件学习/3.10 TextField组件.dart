import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('表单示例'),
            //------设置左侧按钮，点击打开抽屉------
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.call_split),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
          body: Column(
            children: <Widget>[
              TFExample(),
              TFExample222(),
            ],
            )
          ),
    );
  }
}

class TFExample extends StatelessWidget {
  /*
    maxLines      设置此参数可以把文本框改为多行文本框
    onChanged     文本框改变的时候触发的事件
    decoration  
        hintText    类似ios 中的placeholder
        border      配置文本框边框OutlineInputBorder 配合使用
        labelText   lable的名称
        labelStyle  配置lable的样式
    obscureText   把文本框框改为密码框
    controller    结合 TextEditingController()可以配置表单默认显示的内容
  */
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(),
          SizedBox(height: 40),
          Test1(),
        
        ],
      ),
    );
  }
}

class Test1 extends StatelessWidget {
  const Test1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            //----占位符-----
            hintText: "请输入用户名",
            hintStyle: TextStyle(color: Colors.orange),
            //----显示文字-----
            labelText: "用户名",
            labelStyle: TextStyle(color: Colors.pink, fontSize: 20),
            //----Icon------
            icon: Icon(Icons.ac_unit),
            //----边框-------
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.green[300], width: 10.0)
            )
        ),
      ),
    );
  }
}

//使用TextEditingController
class TFExample222 extends StatefulWidget {
  TFExample222({Key key}) : super(key: key);

  @override
  _TFExample222State createState() => _TFExample222State();
}

class _TFExample222State extends State<TFExample222> {

  var _tfEditingController = new TextEditingController();
  @override
  void dispose() {
    _tfEditingController.dispose();//注销时销毁控制器
    super.dispose();
    
  }

  @override
  void initState() { 
    super.initState();
    _tfEditingController.text = "初始值";
    _tfEditingController.addListener(()=>{

    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:10.0),
        child: TextField(
          controller: this._tfEditingController,
          onChanged: (value){
            this._tfEditingController.text = value;
          },
          onEditingComplete: (()=>{

          }),
          decoration: InputDecoration(
            //----占位符-----
            hintText: "请输入文字",
            hintStyle: TextStyle(color: Colors.orange),
          )
        )
      ),
    );
  }
}
