import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Image.network(
                "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554__340.jpg",
                width: 100.0,
              ),
            ),
          )),
    );
  }
}
