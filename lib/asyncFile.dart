import 'dart:async';

import 'dart:ffi';

main() {
  printLogger().then((result) => {print(result)});

  printLogger();

  var data = getData();

  print("Result: $data");

  var loggerResult = printLogger().then((aaa) => {print("AsyncResult:$aaa")});
  print("Logger Result $loggerResult");



}

//类似Kotlin的协程，挂起之后是不能直接与当前的线程进行沟通的.
Future getResult() async {
  await Future.delayed(Duration(seconds: 3));
  return String;
}

//返回类型是Future String就是返回的类型的数据
Future<String> printLogger() async {
  await Future.delayed(Duration(seconds: 2));
  print("---startLog()---");
  return "Result";
}

Future<String> getData() async {
  var newDigest = await printLogger();
  return newDigest;
}

getAsync() async{
  print("Async Data");
  return "Zb666";
}
