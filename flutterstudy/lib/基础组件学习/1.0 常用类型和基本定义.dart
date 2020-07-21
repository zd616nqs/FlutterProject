//const、final声明的变量都是不可变的，但是final是第一次获取值之后才不可变



//运算符： +、 - 、* 、/ 、 ~/ 、 %
//常用属性： isNaN、isEven、isOdd
//常用方法：abs()、round()、floorl()、ceil()、toInt()、toDouble()

//-------类型转换-------
// String -> int
import 'package:flutter/widgets.dart';
//String -> int
var one = int.parse('1');
// String -> double
var onePointOne = double.parse('1.1');
// int -> String
String oneAsString = 1.toString();
// double -> String
String piAsString = 3.14159.toStringAsFixed(2);

void StringExample (){
  //------字符串拼接骚操作-------
  //使用${表达式变量}拼接
  var oneStr,twoStr;
  String str0 = '${oneStr}加上${twoStr}';
  // 使用的是空格拼接，多个空格也可以
  String str1 = '单引号空格字符串' '拼接'        '~';

  // 单引号符串换行了再加空格拼接
  String str2 = '单引号符串'
      '换行了' '再加空格' '拼接';   

  // 单双引号 空格拼接
  String str3 = "单双引号空格字符串" '拼接'        "~";   

  // 单双引号符串换行了再加空格拼接
  String str4 = "单双引号符串"
      '换行了' '再加空格' '拼接';       
  //三个单引号拼接
  String str5 = '''
      使用3个单引号、
      看到我使用了么
    ''';      
  //三个双引号拼接
  String str6 = """
      使用3个双引号、
      看到我使用了么
    """;
  //使用加号
  String str7 = "算了，还是正常一点" + "，使用 + 来拼接";
}

void listExample (){
  //-------List列表数组-------
  /*
List里面常用的属性和方法：
    常用属性：
        length          长度
        reversed        翻转
        isEmpty         是否为空
        isNotEmpty      是否不为空
    常用方法：  
        add         增加
        addAll      拼接数组
        indexOf     查找  传入具体值
        remove      删除  传入具体值
        removeAt    删除  传入索引值
        fillRange   修改   
        insert(index,value);            指定位置插入    
        insertAll(index,list)           指定位置插入List
        toList()    其他类型转换成List  
        join()      List转换成字符串
        split()     字符串转化成List
        forEach   
        map
        where
        any
        every
*/
  // 使用构造创建
  var listNew = new List();
  //创建一个int类型的list
  List intlistOne = [1, 2, 3];
  // 创建一个常量List， 不可以改变的List
  List constList = const[10, 7, 23];

  //-------数组常用方法-------
  //  在数组中可以存放多个不同类型的对象
  var list = [1, 2, 3, 'Flutter', true];
  print(list);//输出的结果：[1, 2, 3, Flutter, true]

  // 修改数组下标为2 的值
  list[2] = 'Dart';
  print(list);// 输出的结果：[1, 2, Dart, Flutter, true]

  // 获取数组的长度
  print(list.length);   // 输出的结果：5

  // 向数组中添加元素
  list.add("value");
  print(list);        // 输出的结果：[1, 2, Dart, Flutter, true, value]

  // 向数组中的指定位置添加元素
  list.insert(1, 'element');  
  print(list);      // 输出的结果：[1, element, 2, Dart, Flutter, true, value]

  // 移除数组中的元素
  list.remove("value");
  print(list);      // 输出的结果：[1, element, 2, Dart, Flutter, true]

  // 移除数组中指定的元素
  list.removeAt(1);
  print(list);      // 输出的结果：[1, 2, Dart, Flutter, true]

  // 判断数组中是否有某个元素
  print(list.indexOf("element"));   // 输出结果：-1

  // 排序，必须数组类型一致才能用，根据语法提示： List.sort([(int, int) → int compare]) → void
  var intlist = [1, 2, 5, 6 ,3];
  intlist.sort( (a, b) =>  a.compareTo(b) );
  print(intlist);   // 输出结果：[1, 2, 3, 5, 6]
}




void MapExample (){
  /*
  映射(Maps)是无序的键值对：

    常用属性：
        keys            获取所有的key值
        values          获取所有的value值
        isEmpty         是否为空
        isNotEmpty      是否不为空
    常用方法:
        remove(key)     删除指定key的数据
        addAll({...})   合并映射  给映射内增加属性
        containsValue   查看映射内的值  返回true/false
        forEach   
        map    每个元素都进行操作
        where  返回满足条件的结果
        any 
        every  每一个都要满足条件
*/

  // 创建Map 
  var language = {'fisrt':'dart', 'second':'java'};
  // 创建不可变的 Map
  var constLanguage = const {'fisrt':'dart', 'second':'java'};
  // 通过构造器创建
  var initLanguage = new Map();

  // 创建Map 
  var map = {'fisrt':'dart', 'second':'java'};
  // 获取长度
  print(map.length);    // 输出结果：2
  // 判断是否为空
  print(map.isEmpty);     // 输出结果：false
  print(map.isNotEmpty);  // 输出结果：true
  // 获取到所有的 key
  print(map.keys);        // 输出结果：(fisrt, second)
  // 获取到所有的 values
  print(map.values);      // 输出结果：(dart, java)
  // 判断是否包含某个key
  print(map.containsKey("key"));    // 输出结果：false
  // 判断是否包含某个value
  print(map.containsValue("key"));    // 输出结果：false
  // 添加一个新的元素进去
  map['third'] = 'key';
  print(map);         // 输出结果：{fisrt: dart, second: java, third: key}

  // 循环打印 代码提示：Map.forEach((String, String) → void fun) → void
  map.forEach( (key2, value) =>  getMap(key2, value) );
}


void getMap(key, value){
  print("key:${key}, value:${value}");
}


//------------------类型判断---------------- 
void typeJudge(){
  var str673=123;

  if(str673 is String){
    print('是string类型');
  }else if(str673 is int){

    print('int');
  }else{
    print('其他类型');
  }
}


//算数运算符
void count1(){

  int a=13;
  int b=5;

  print(a+b);   //加
  print(a-b);   //减
  print(a*b);   //乘
  print(a/b);   //除
  print(a%b);   //其余
  print(a~/b);  //取整

  var c=a*b;
  print('--------');
  print(c);
}

//关系运算符
void count2(){
  //  ==    ！=   >    <    >=    <=

  int a=5;
  int b=3;
  print(a==b);   //判断是否相等
  print(a!=b);   //判断是否不等
  print(a>b);   //判断是否大于
  print(a<b);   //判断是否小于
  print(a>=b);   //判断是否大于等于
  print(a<=b);   //判断是否小于等于


  if(a>b){
    print('a大于b');
  }else{
    print('a小于b');
  }
}

//逻辑运算符
void count3() {
  //与：&&   或||  取反!
}


//赋值运算符 
void count4(){
  //基础赋值运算符
  double a = 10.0;

  //例子 nqs??=23   表示如果b为空，把23赋值给nqs
  var nqs;
  nqs ??= 23;//nqs为23


  var jjj=11;
  var kkk = jjj??999;//结果为11


  //2.复合赋值运算符
  a+=10;
  a-=2;
  a*=3;
  a/=4.0;
  a%=2;
}

