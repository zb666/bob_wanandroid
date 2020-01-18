class A {
  num x, y;

  A(this.x, this.y);

  void printInfo() => print('$x $y');

  void startLogo() {}
}

class Point {
  void point() {}
}

class Test {
  a() {}

  print(){

  }
}

class TestB {
  b() {}
}

///被混入的地方有构造方法就不被允许混入
///混入方法的优先级 c with A,B  第一优先级是自身，如果没有到的话就从with的最右边的查找方法,
///比如C 找到了，就不找了，但是找不到就找B,如果B找不到就找A()
class C with Test, TestB {
  c() {
    a();
    b();
  }

  b(){

  }

}
