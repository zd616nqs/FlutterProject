//const、final声明的变量都是不可变的，但是final是第一次获取值之后才不可变



//运算符： +、 - 、* 、/ 、 ~/ 、 %
//常用属性： isNaN、isEven、isOdd
//常用方法：abs()、round()、floorl()、ceil()、toInt()、toDouble()

//-------类型转换-------
// String -> int
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

  // 循环打印 代码提示：Map.forEach((String, String) → void f) → void
  map.forEach( (key2, value) =>  getMap(key2, value) );
}


void getMap(key, value){
  print("key:${key}, value:${value}");
}