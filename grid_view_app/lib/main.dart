import 'package:flutter/material.dart';
import 'package:grid_view_app/components/data/playes.dart';
import 'package:grid_view_app/pages/home.dart';

import 'components/my_player_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
