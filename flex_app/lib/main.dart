import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.redAccent,
                  height: double.infinity,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blueAccent,
                  height: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
