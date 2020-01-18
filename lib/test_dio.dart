import 'package:dio/dio.dart';

void main() async {
  const url = "https://www.wanandroid.com/banner/json";
  var dio = new Dio();

  Response response = await dio.get(url);

  print(response);

  var list = [1, 2, 3, 4];

  var listIterable = list.map((i) {
    return "$i";
  });

  var listTest = listIterable.toList();

  print(listTest);

  test(title: "TitleName");

  getAwait();

  await getAwait();

  String result = await getResult();
  print(result);

}

void test({title: String}) {
  print(title);
}

a(String str) => "$str";

Future getAwait() async{
  Future.delayed(Duration(seconds: 3));
  String news = "Async Result";
  print(news);
}

Future getResult() async{
  Future.delayed(Duration(seconds: 3));
  return "Future Result";
}