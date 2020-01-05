import 'package:dio/dio.dart';

void main() async {
  const url = "https://www.wanandroid.com/banner/json";
  var dio = new Dio();

  Response response = await dio.get(url);

  print(response);

  var list = [1,2,3,4];

  var listIterable = list.map((i){
    return "$i";
  });

  var listTest = listIterable.toList();

  print(listTest);

  test(title: "TitleName");
}

void test({title:String}){
  print(title);
}