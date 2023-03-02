import 'package:flutter/material.dart';

//-------抽象商品类----------
class Product {
  final String produtctTitle; //商品标题
  final String produtctDesStr; //商品描述
  Product(this.produtctTitle, this.produtctDesStr);
}

//-------列表传参-------
class PushWithPopWithCallbackExample extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航数据传递和接收',
      home: ProductList(
          productsData:
              List.generate(20, (i) => Product('商品名称:$i', '商品编号:$i'))),
    );
  }
}

//-------列表接收参数-------
class ProductList extends StatelessWidget {
  final List<Product> productsData; //定义接收参数(数组)
  ProductList({Key? key, required this.productsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('商品列表')),
        body: ListView.builder(
          itemCount: productsData.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  '${productsData[index].produtctTitle},${productsData[index].produtctDesStr}, 点击跳转详情页'),
              onTap: () {
                //跳转详情页，并且等待回调结果
                _navigateToDetail1(context, index); //方式一
                // _navigateToDetail2(context, index);//方式二
              },
            );
          },
        ));
  }

  //------内部私有方法，跳转并从详情页返回的回调------
  //方式一：async/await组合接收
  _navigateToDetail1(BuildContext context, int index) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                new ProductDetailPage(productDetailData: productsData[index])));
    //类似于toast显示回调结果
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }

  //方式二：.then接收
  _navigateToDetail2(BuildContext context, int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return new ProductDetailPage(productDetailData: productsData[index]);
    })).then((result2) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result2')));
    });
  }
}

//-------商品详情页面-------
class ProductDetailPage extends StatelessWidget {
  final Product productDetailData;
  ProductDetailPage({Key? key, required this.productDetailData})
      : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品详情页')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '${productDetailData.produtctTitle},${productDetailData.produtctDesStr}',
            style: TextStyle(fontSize: 30.0),
          ),
          RaisedButton(
            child: Text('返回商品列表页', style: TextStyle(color: Colors.white)),
            color: Colors.lightBlue,
            onPressed: () {
              //返回回调数据
              Navigator.pop(
                  context, '${productDetailData.produtctTitle}--返回的数据');
            },
          ),
        ],
      )),
    );
  }
}
