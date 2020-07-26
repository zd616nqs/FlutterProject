import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:core';

class StreamExample extends StatelessWidget {
  const StreamExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: SteamDemo(),
      )
    );
  }
}


class SteamDemo extends StatefulWidget {
  SteamDemo({Key key}) : super(key: key);

  @override
  _SteamDemoState createState() => _SteamDemoState();
}

class _SteamDemoState extends State<SteamDemo> {
  StreamSubscription _streamSubscription;
  StreamSubscription _streamSubscription1;
  StreamSubscription _streamSubscription2;
  StreamSubscription _streamSubscription3;

  StreamController<String> _streamDemo2;
  StreamSink _sinkDemo;

  StreamController<String> _streamDemo3;


  
  @override
  void initState() { 
    super.initState();
  
    //监听一个模拟的网络请求
    print("---创建一个stream");
    //第一种
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());

    //第二种 使用StreamController,单个方法接收监听
    _streamDemo2 = StreamController<String>();
    _sinkDemo = _streamDemo2.sink;

    //第三种 使用StreamController,多个方法接收监听
    _streamDemo3 = StreamController.broadcast();

    //接收监听变化
    print("---开始监听stream");
    // _streamSubscription1 = _streamDemo.listen(onData222,onError: onError222,onDone: onDone222);

    _streamSubscription2 = _streamDemo2.stream.listen(onData222,onError: onError222,onDone: onDone222);
    
    _streamSubscription3 = _streamDemo3.stream.listen(onData222,onError: onError222,onDone: onDone222);
    _streamSubscription3 = _streamDemo3.stream.listen(onData333,onError: onError222,onDone: onDone222);

    //自己切换
    _streamSubscription = _streamSubscription3;
  }

  //监听到的数据
  void onData222(String data){
    print("---接收到数据-222-:$data");
  }
  void onData333(String data){
    print("---接收到数据-333-:$data");
  }
  //监听结束
  void onDone222(){
    print("---结束");
  }
  //监听到的错误
  void onError222(error){
    print("---报错：$error");
  }

  //------暂停、恢复、取消监听-------
  void _pauseStream(){
    _streamSubscription.pause();
  }
  void _resumeStream(){
    _streamSubscription.resume();
  }
  void _cancelStream(){
    _streamSubscription.cancel();
  }
  
  
  //------手动添加数据-----
  void _addDataToStream() async{
    print("手动添加数据");
    String newData = await fetchData();
    // _streamDemo2.add(newData);
    _sinkDemo.add(newData);
    
    _streamDemo3.add(newData);
  }

  //模拟网路请求，3秒后返回一个字符串hellow
  Future<String> fetchData () async{
      await Future.delayed(Duration(seconds: 3));
      return "hellow";
    }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("暂停监听"),
              onPressed: _pauseStream,
            ),
            FlatButton(
              child: Text("恢复监听"),
              onPressed: _resumeStream,
            ),
            FlatButton(
              child: Text("取消监听"),
              onPressed: _cancelStream,
            ),
            FlatButton(
              child: Text("手动添加数据"),
              onPressed: _addDataToStream,
            ),

            SizedBox(height: 30),


            //使用streamBuilder自动刷新小部件，不用再手动setstate改变
            Container(
              width: 200,
              height: 100,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: StreamBuilder(
                stream: _streamDemo3.stream,
                initialData: "缺省值" ,
                builder: (BuildContext context, AsyncSnapshot snapshot){
                  return Container(
                    child: Text("${snapshot.data}")
                  );
                },
              ),
            ),
            
            
          
          ],
        ),
      ),
    );
  }
}