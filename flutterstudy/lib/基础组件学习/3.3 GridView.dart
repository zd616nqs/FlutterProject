import 'package:flutter/material.dart';

//----------GridView表格视图-----------------
class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellowAccent,
      ),
      home: Scaffold(
          appBar: new AppBar(title: new Text("listview标题")),
          //------静态网格------
          // body: GridViewStaticExample()
          //------动态网格-------
          body: GridViewDynamicExample()
          //------老版写法------
          // body:GridVersionOld()
          ),
    );
  }
}

//------gridView静态网格==》gridView.count------
class GridViewStaticExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      /*
        scrollDirection 滚动方向
        padding 内边距
        resolve 组件反向排序
        crossAxisCount 交叉轴一列的数量
        mainAxisSpacing 主轴方向元素间距
        crossAxisSpacing 交叉轴方向元素间距
        childAspectRatio 子widget元素的高宽比例
        children  子widget
      
        gridDelegate：(SliverGridDelegate)
          1.SliverGridDelegateWithFixedCrossAxisCount 常用
          解释：该子类实现了一个横轴为固定数量子元素的layout算法，根据crossAxisCount和childAspectRatio确定元素的高宽
          2.SliverGridDelegateWithMaxCrossAxisExtent不常用
          解释：该子类实现了一个横轴子元素为固定最大长度的layout算法，根据maxCrossAxisExtent和childAspectRatio确定元素的高宽
          //参考链接：https://blog.csdn.net/u010184528/article/details/106689658/
      
      */

      crossAxisCount: 3,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 20.0,
      childAspectRatio: 0.6,
      children: <Widget>[
        Image.network(
            'https://p1.meituan.net/movie/c63849c7a9de360a7b192bc322792a111705236.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/moviemachine/f7d2ad70eb79d6d9b8a197713db9b8c41711752.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p1.meituan.net/movie/b76f37b5e3484b6837f75ef7b5bf46452066459.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p1.meituan.net/movie/d28b729ffe72353a72d1e7ef8a9b90591544978.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/movie/b8821d597382e319f9679b7e24e49d113204356.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/movie/35cd439c836bf2281bbd1e8eaeb8fdea3999459.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/movie/b73eb2d2b878282f8ef399c66cec67372455729.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/moviemachine/90258899534b9cca44f2e9b9a6246504248749.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
      ],
    );
  }
}

//-------gridView动态表格==》gridview.builder--------
class GridViewDynamicExample extends StatelessWidget {
  const GridViewDynamicExample({Key key}) : super(key: key);

  _getData() {
    List data = new List();
    data.addAll([
      Image.network(
          'https://p1.meituan.net/movie/c63849c7a9de360a7b192bc322792a111705236.jpg@160w_220h_1e_1c',
          fit: BoxFit.cover),
      Image.network(
          'https://p0.meituan.net/moviemachine/f7d2ad70eb79d6d9b8a197713db9b8c41711752.jpg@160w_220h_1e_1c',
          fit: BoxFit.cover),
      Image.network(
          'https://p1.meituan.net/movie/b76f37b5e3484b6837f75ef7b5bf46452066459.jpg@160w_220h_1e_1c',
          fit: BoxFit.cover),
      Image.network(
          'https://p1.meituan.net/movie/d28b729ffe72353a72d1e7ef8a9b90591544978.jpg@160w_220h_1e_1c',
          fit: BoxFit.cover),
      Image.network(
          'https://p0.meituan.net/movie/b8821d597382e319f9679b7e24e49d113204356.jpg@160w_220h_1e_1c',
          fit: BoxFit.cover),
      Image.network(
          'https://p0.meituan.net/movie/35cd439c836bf2281bbd1e8eaeb8fdea3999459.jpg@160w_220h_1e_1c',
          fit: BoxFit.cover),
      Image.network(
          'https://p0.meituan.net/movie/b73eb2d2b878282f8ef399c66cec67372455729.jpg@160w_220h_1e_1c',
          fit: BoxFit.cover),
      Image.network(
          'https://p0.meituan.net/moviemachine/90258899534b9cca44f2e9b9a6246504248749.jpg@160w_220h_1e_1c',
          fit: BoxFit.cover)
    ]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            //gridDelegate  控制布局，只有在使用Gridview.builder构造方式时，才使用
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 0.6,
            ),
            itemCount: _getData().length,
            itemBuilder: (context, index) {
              return _getData()[index];
            }));
  }
}





//------gridView老版写法------
class GridVersionOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      
      /* 
      gridDelegate：(SliverGridDelegate)
        1.SliverGridDelegateWithFixedCrossAxisCount 常用
        解释：该子类实现了一个横轴为固定数量子元素的layout算法，根据crossAxisCount和childAspectRatio确定元素的高宽
        2.SliverGridDelegateWithMaxCrossAxisExtent不常用
        解释：该子类实现了一个横轴子元素为固定最大长度的layout算法，根据maxCrossAxisExtent和childAspectRatio确定元素的高宽
        //参考链接：https://blog.csdn.net/u010184528/article/details/106689658/
      */
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, //交叉轴方向，列数
        mainAxisSpacing: 10.0, //主轴方向，元素间距
        crossAxisSpacing: 20.0, //交叉轴方向，元素间距
        childAspectRatio: 0.7, //元素宽高比
      ),
      children: <Widget>[
        Image.network(
            'https://p1.meituan.net/movie/c63849c7a9de360a7b192bc322792a111705236.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/moviemachine/f7d2ad70eb79d6d9b8a197713db9b8c41711752.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p1.meituan.net/movie/b76f37b5e3484b6837f75ef7b5bf46452066459.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p1.meituan.net/movie/d28b729ffe72353a72d1e7ef8a9b90591544978.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/movie/b8821d597382e319f9679b7e24e49d113204356.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/movie/35cd439c836bf2281bbd1e8eaeb8fdea3999459.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/movie/b73eb2d2b878282f8ef399c66cec67372455729.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
        Image.network(
            'https://p0.meituan.net/moviemachine/90258899534b9cca44f2e9b9a6246504248749.jpg@160w_220h_1e_1c',
            fit: BoxFit.cover),
      ],
    );
  }
}
