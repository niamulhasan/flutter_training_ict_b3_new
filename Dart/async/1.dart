Future<void> main() async {
  print("Line One");
  var a = await Future.delayed(Duration(seconds: 2), () {
    print("Line Two");
  });
  a.toString();
  print("Line Three");
}

//await
//async
//Future