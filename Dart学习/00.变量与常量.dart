

void main() {
  example();
}


void example() {
  //--- 1.var变量 ----
  //使用var声明变量，可赋予不同类型的值
  //未初始化时，默认值为null
  var a ;
  print(a);//null
  a = '牛牛';
  print(a);//牛牛
  a = 10;
  print(a);//10


  //--- 2.使用final声明变量，只能赋值一次 ---
  final b = 30;
  // b = "牛"; 不能再次赋值
  // b = 40;  不能再次赋值

  //--- 3.const常量 ----
  //const声明常量
  //const声明的必须是编译期的常量
  const c = 60;
}



