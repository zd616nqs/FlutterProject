import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: new Text("标题")),
        body: Center(
          child: Card111(),
        ),
      ),
    );
  }
}

class Card111 extends StatelessWidget {
  Widget build(BuildContext context){

    var cardView = Card(
      child: Column(
        children: <Widget>[
          new ListTile(
            title: Text('牛青山',style: TextStyle(color: Colors.grey,fontSize: 25.0,fontWeight: FontWeight.bold),),
            subtitle: Text('电话：111111111'),
            leading:  new Icon(Icons.account_circle,color:Colors.lightBlue),
          ),
          new Divider(thickness: 0.5,indent: 10,endIndent: 10),
          new ListTile(
            title: Text('赵双琳',style: TextStyle(color: Colors.grey,fontSize: 25.0,fontWeight: FontWeight.bold),),
            subtitle: Text('电话：222222222'),
            leading:  new Icon(Icons.account_circle,color:Colors.lightBlue),
          ),
          new Divider(thickness: 0.5,indent: 10,endIndent: 10),
        ],
      ),
    );

    return cardView;
  }
}
