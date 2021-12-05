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
          body: ListView.builder(
              itemCount: 200,
              itemBuilder: (conttext, i) {
                return ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 44.0,
                  ),
                  title: Text("$i Akkas Ali"),
                  subtitle: Text("akkas-ali@akmail.com"),
                  trailing: Icon(Icons.call),
                );
              })),
    );
  }
}
