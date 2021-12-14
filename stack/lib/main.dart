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
        body: Center(
          child: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 40.0,
                child: FlutterLogo(
                  size: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0, left: 55.0),
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.green.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
