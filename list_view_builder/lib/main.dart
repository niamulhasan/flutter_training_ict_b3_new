import 'package:flutter/material.dart';

import 'components/list_tile.dart';

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
          color: Color(0xffffffff),
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: 500000,
            itemBuilder: (context, i) {
              return MyListTile();
            },
          ),
        ),
      ),
    );
  }
}
