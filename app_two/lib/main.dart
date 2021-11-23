import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App title"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Hello"),
              Text("Hi"),
              Text("Chao"),
            ],
          ),
        ),
      ),
    );
  }
}
