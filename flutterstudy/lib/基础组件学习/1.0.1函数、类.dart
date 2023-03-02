import 'package:flutter/widgets.dart';

void printInfo() {
  print('我是一个自定义方法');
}

int getNum() {
  var myNum = 123;
  return myNum;
}

String printUserInfo() {
  return 'this is str';
}

List getList() {
  return ['111', '2222', '333'];
}

void main() {
  //演示方法的作用域
  void xxx() {
    aaa() {
      print(getList());
      print('aaa');
    }

    aaa();
  }

  // aaa();  错误写法

  xxx(); //调用方法

  //闭包

  fn() {
    var a = 123; /*不会污染全局   常驻内存*/
    return () {
      a++;
      print(a);
    };
  }

  var b = fn();
  b();
  b();
  b();
}

//1、定义一个方法 求1到这个数的所有数的和      60    1+2+3+。。。+60

/*
    int sumNum(int n){
      var sum=0;
      for(var i=1;i<=n;i++)
      {
        sum+=i;
      }
      return sum;
    } 

    var n1=sumNum(5);
    print(n1);
    var n2=sumNum(100);
    print(n2);

 */

//2、定义一个方法然后打印用户信息

// String printUserInfo(String username,int age){  //行参
//     return "姓名:$username---年龄:$age";
// }

// print(printUserInfo('张三',20)); //实参

//3、定义一个带可选参数的方法

// String printUserInfo(String username,[int age]){  //行参

//   if(age!=null){
//     return "姓名:$username---年龄:$age";
//   }
//   return "姓名:$username---年龄保密";

// }

// // print(printUserInfo('张三',21)); //实参

// print(printUserInfo('张三'));

//4、定义一个带默认参数的方法

// String printUserInfo(String username,[String sex='男',int age]){  //行参

//   if(age!=null){
//     return "姓名:$username---性别:$sex--年龄:$age";
//   }
//   return "姓名:$username---性别:$sex--年龄保密";

// }

// print(printUserInfo('张三'));

// print(printUserInfo('小李','女'));

//  print(printUserInfo('小李','女',30));

//5、定义一个命名参数的方法

// String printUserInfo(String username,{int age,String sex='男'}){  //行参

//     if(age!=null){
//       return "姓名:$username---性别:$sex--年龄:$age";
//     }
//     return "姓名:$username---性别:$sex--年龄保密";

// }

// print(printUserInfo('张三',age:20,sex:'未知'));

//6、实现一个 把方法当做参数的方法

// var fn=(){

//   print('我是一个匿名方法');
// };
// fn();

// //方法
// fn1(){
//   print('fn1');
// }

// //方法
// fn2(fn){

//   fn();
// }

// //调用fn2这个方法 把fn1这个方法当做参数传入
// fn2(fn1);

//------------------------------
//-------------定义类------------
//------------------------------
class Person {
  String? name;
  int? age;
  //flutter2.0增加了null安全检查，参考https://stackoverflow.com/questions/67056727
  // late String name;
  // late int age;

  //静态属性和静态方法（类属性和类方法，不用实例化，直接用类名调用）
  static String sex = "男生";
  static void show() {
    print("showFun");
  }

  //-------1.1自定义方法-----------
  void getNqsName() {
    print("${this.name}");
  }

  void setNqsName(String newName) {
    this.name = newName;
  }

  //-------1.2私有方法、私有属性前面加_
  _privateNqs() {
    print('私有方法');
  }
  // String _privateName;//私有属性(必须在单独一个文件内，才是私有的，不能访问)

  //-------2.构造初始化方法-------
  //复杂写法
  // Person(String name222, int age222){
  //   this.name = name222;
  //   this.age = age222;
  // }
  //简单写法
  Person(this.name, this.age);

  //-------3.初始化方法（自定义）-------
  //flutter2.0增加了null安全检查，参考https://stackoverflow.com/questions/67056727
  Person.nqsinit(String nameStr, int ageNum) {
    this.name = nameStr;
    this.age = ageNum;
  }

  //getter和setter方法
  //getter方法(没有圆括号)
  get nnn {
    this.name;
  }

  //setter方法
  set qqq(value) {
    this.name = value;
  }
}

void classExample() {
  //-------1.自定义方法-----------
  Person nqsPerson = new Person("牛青山", 20);
  nqsPerson.getNqsName();
  nqsPerson.setNqsName("牛2山");

  //-------2.初始化方法（默认）-------
  Person p222 = new Person("赵双琳", 18);
  p222.getNqsName();

  //-------3.初始化方法（自定义）-------
  Person p333 = new Person.nqsinit("荔枝", 6);
  p333.getNqsName();

  //-------4.getter和setter方法--------
  //getter方法(没有圆括号)
  print(p222.nnn);
  //setter方法
  p222.qqq = "小荔枝";

  //-------5.静态属性和静态方法（类属性和类方法，不用实例化，直接用类名调用）-----
  print(Person.sex);
  Person.show();

  /*
  Dart中的对象操作符:

      ?     条件运算符 （了解）
      as    类型转换 isMemeberOfClass
      is    类型判断 isKindOfClass
      ..    级联操作 （连缀）  (记住)
  */
  if (p222 is Person) {}

  p222.name = "牛牛";
  p222.age = 20;
  p222.getNqsName();

  p222
    ..name = "青青"
    ..age = 18
    ..getNqsName();
  SubPerson subPerson = new SubPerson.nqsinit("牛牛", 22, "小牛", 8);
  subPerson.getNqsName();
}

//类的继承
class SubPerson extends Person {
  //-----子类属性-------
  late String subName;
  late int subAge;
  //-----子类的初始化------
  // SubPerson(String name, int age) : super(name, age);
  SubPerson.nqsinit(String name, int age, String subName, int subAge)
      : super.nqsinit(name, age) {
    this.subName = subName;
    this.subAge = subAge;
  }

  //重写父类方法
  @override //在重写父类方法时，@override可以写可以不写
  void getNqsName() {
    print("哈哈哈哈哈");
  }
}

//------------抽象类、多态和接口-------------------

/*
抽象类: Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口。
  1、抽象类通过abstract 关键字来定义
  2、抽象类的子类，必须得实现里面的抽象方法
  3、Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们称为抽象方法。
  4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。
  5、抽象类不能被实例化，只有继承它的子类可以
extends抽象类 和 implements的区别：
  1、如果要复用抽象类里面的方法，并且要用抽象方法约束子类的话我们就用extends继承抽象类
  2、如果只是把抽象类当做标准的话我们就用implements实现抽象类
*/

/*
  多态：
    允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果 。
    子类的实例赋值给父类的引用。
    多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。
*/

//案例：定义一个Animal 类要求它的子类必须包含eat方法
abstract class Animal {
  eat(); //抽象方法
  run(); //抽象方法

  //抽象类中的普通方法，不用必须继承
  printInfo() {
    print('我是一个抽象类里面的普通方法');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃老鼠');
  }

  @override
  run() {
    print('小猫在跑');
  }
}

/* 
    -------------------
      接口：就是定义、规范
    -------------------
*/
abstract class DB {
  String? uri;
  add(String data);
  save();
  delete();
}

class MySQL implements DB {
  @override
  String? uri;

  MySQL(this.uri);

  @override
  add(String data) {
    return null;
  }

  @override
  delete() {
    return null;
  }

  @override
  save() {
    return null;
  }
}

//-----------------------------------
//一个类实现多个接口
//-----------------------------------
abstract class A {
  String? hahaha;
  void nqs111();
}

abstract class B {
  void nqs222();
}

class C implements A, B {
  @override
  String? hahaha;

  @override
  void nqs111() {}

  @override
  void nqs222() {}
}

/*
mixins的中文意思是混入，就是在类中混入其他功能。

在Dart中可以使用mixins实现类似多继承的功能


因为mixins使用的条件，随着Dart版本一直在变，这里讲的是Dart2.x中使用mixins的条件：

  1、作为mixins的类只能继承自Object，不能继承其他类
  2、作为mixins的类不能有构造函数
  3、一个类可以mixins多个mixins类
  4、mixins绝不是继承，也不是接口，而是一种全新的特性
*/

class MixinNQS {
  String nnn;
  int qqq;
  MixinNQS(this.nnn, this.qqq);
}

class MixinA {
  String info = "this is A";
  void printA() {
    print("A");
  }
}

class MixinB {
  void printB() {
    print("B");
  }
}

class MixinC with MixinA, MixinB {
  //mixin使用
}

class MixinD extends MixinNQS with MixinA, MixinB {
  //继承和mixin混用
  MixinD(String nnn, int qqq) : super(nnn, qqq);
}

void mixinsExample() {
  var mixinC = new MixinC();
  mixinC.printA();
  mixinC.printB();

  var mixinD = new MixinD("牛青山", 11);
  mixinD.printA();
  mixinD.printB();

  //mixins的类型就是其超类的子类型。
  print(mixinD is MixinNQS); //true
  print(mixinD is MixinA); //true
  print(mixinD is MixinB); //true
  print(mixinD is Object); //true
}

//-------------------------------------------------
//------------泛型---------------------------------
//-------------------------------------------------

//场景：如果入参和出参类型不确定，但是处理逻辑一样，就需要使用泛型，避免代码冗余
String getData1(String value) {
  return value;
}

int getData2(int value) {
  return value;
}

//-----------泛型实现了不特定类型的输入和返回-----------

//输入参数类型和返回值类型保持一致，但不指定是哪种类型
//T是自定义的一个字母，其他的也行
T getData<T>(T value) {
  return value;
}

void fanxingExample() {
  getData<String>("niuqinghsan"); //niuqingshan
  getData<int>(22); //22
}

//-----------泛型类 实例传入的参数必须是指定类型-----------
class Jeason<T> {
  // List list = new List<T>();
  List list = <T>[];
  void add(T value) {
    this.list.add(value);
  }
}

void JeasonExample() {
  Jeason nnn = new Jeason<int>(); //指定调用add方法时必须是int类型
  nnn.add(22);
  // nnn.add("niuqingshan");
}

//-----------泛型接口-----------------
/*
Dart中的泛型接口:
    实现数据缓存的功能：有文件缓存、和内存缓存。内存缓存和文件缓存按照接口约束实现。
    1、定义一个泛型接口 约束实现它的子类必须有getByKey(key) 和 setByKey(key,value)
    2、要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致
*/

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

class FlieCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是文件缓存 把key=${key}  value=${value}的数据写入到了文件中");
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是内存缓存 把key=${key}  value=${value} -写入到了内存中");
  }
}

void cacheExample() {
  // MemoryCache m=new MemoryCache<String>();
  //  m.setByKey('index', '首页数据');

  MemoryCache m = new MemoryCache<Map>();
  m.setByKey('index', {"name": "张三", "age": 20});
}

//--------------------
//------库的引入-------
//--------------------
/*
1、冲突解决
当引入两个库中有相同名称标识符的时候，如果是java通常我们通过写上完整的包名路径来指定使用的具体标识符，甚至不用import都可以，但是Dart里面是必须import的。当冲突的时候，可以使用as关键字来指定库的前缀。如下例子所示：
    import 'package:lib1/lib1.dart';
    import 'package:lib2/lib2.dart' as lib2;

    Element element1 = new Element();           // Uses Element from lib1.
    lib2.Element element2 = new lib2.Element(); // Uses Element from lib2.
*/

/*
部分导入
  如果只需要导入库的一部分，有两种模式：
    模式一：只导入需要的部分，使用show关键字，如下例子所示：
    import 'package:lib1/lib1.dart' show foo;

    模式二：隐藏不需要的部分，使用hide关键字，如下例子所示：
    import 'package:lib2/lib2.dart' hide foo;      
*/

/*
懒加载
    也称为懒加载，可以在需要的时候再进行加载。
    懒加载的最大好处是可以减少APP的启动时间。
    懒加载使用deferred as关键字来指定，如下例子所示：
    import 'package:deferred/hello.dart' deferred as hello;
    当需要使用的时候，需要使用loadLibrary()方法来加载：

    greet() async {
      await hello.loadLibrary();
      hello.printGreeting();
    }

*/

/*
async和await
  这两个关键字的使用只需要记住两点：
    只有async方法才能使用await关键字调用方法
    如果调用别的async方法必须使用await关键字

async是让方法变成异步。
await是等待异步方法执行完成。
*/
