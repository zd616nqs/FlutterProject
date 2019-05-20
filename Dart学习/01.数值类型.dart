

void main() {
  //内置类型:
  //字符串string
  example1();
  //布尔型bool 
  //列表list  
  //键值对map   
  //runes、symbols
  
}

//------数值型number:1.整型int  2.浮点型double------
void example1() {
  num a = 10;
  a = 22.5;
  
  int b = 20;
  // b = 20.5;//错误

  double c = 11.5;
  c = 11;
  print(c);//11.0

  //1.运算符 + - * /  ~/(取整)  %(取余)
  print(a / b);// 1.125
  print(a ~/ b);// 1
  print(a % b);// 2.5

  //2.常用属性:isNaN(非数字)  isEven(是否偶数) isOdd(是否奇数)
  print(0.0 / 0.0);//NaN
  int h = 10;
  print(h.isEven);//true
  print(h.isOdd);//false

  //3.常用方法：abs()、round()、floor()、ceil()、toInt()、toDouble()
  double m = -100;
  print(m.abs());//100

  print(10.3.round());//10
  print(10.5.round());//11
  print(10.3.floor());//10
  print(10.3.ceil());//11

}

  //------字符串string------
  void example2() {

  }
  //------布尔型bool------ 
  void example3() {

  } 
  //------列表list------  
  void example4() {
    List<int> listOne = [1,2,3,4];
    print('数组长度${listOne.length}');
    listOne.add(5);
    listOne.remove(5);
    listOne.contains(5);
  }
  //------集合set-------
  void example5() {
    //集合：无序数组，元素不重复
    // Set<String> numberSet = {"niu","qing","shan"};
    // assert(numberSet.length == 5);
  }

  //------键值对map------   
  void example6() {
    Map<int,String> nqs = {1:'one',2:'two'};
    nqs[1];
    nqs.entries;
    nqs.keys;
    nqs.values;
    nqs.containsKey(1);
    nqs.containsValue('one');
  }
  //------runes、symbols------
  void example7() {

  }

