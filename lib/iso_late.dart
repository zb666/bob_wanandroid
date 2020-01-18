import 'dart:io';
import 'dart:isolate';

int i; //dart中都是对象没有基本数据类型
main() {
  //ISO_LATE相当于进程一样的线程
  i = 10;

  //创建消息接收器，将发送器传递给isolate
  var receivePort = ReceivePort();

//  Isolate.spawn(entryPoint, receivePort.sendPort);

  Isolate.spawn(entryPoint2, receivePort.sendPort);

  //消息接收器必须close掉

//  receivePort.close();
  //看成在线程当中执行
  print("main");
  //Dart中线程之间的通信  SendPort和ReceivePort

  receivePort.listen((t) {
    if (t is String) {
      print("$t");
    }
    if (t is SendPort) {
      t.send("走! 老地方");
    }
  });
}

//子ISOLATE入口函数
void entryPoint(SendPort sendPort) {
  //dart中可以接收任意类型的参数，可以不写名称
  print(sendPort);
  print(i);
  sleep(Duration(seconds: 5));
  sendPort.send("Hello");

  ///上面是主线程和子线程的通讯
}

void entryPoint2(SendPort sendPort) {
  sendPort.send("我说：去大保健吗");
  var receivePort = ReceivePort();

  sendPort.send(receivePort.sendPort);

  receivePort.listen((msg) {
    print("收到了老吴的回复$msg");
  });
}
