import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: FlutterLogo(
                    size: 100.0,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) => ListTile(
                          leading: Icon(Icons.person),
                          title: Text("I am menu Item $index"),
                          subtitle: Text("I am the subtitile"),
                          trailing: Icon(Icons.arrow_forward),
                        )),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
