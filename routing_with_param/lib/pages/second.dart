import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String amar_baper_param;

  const SecondPage({
    Key? key,
    required this.amar_baper_param,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I am second page"),
      ),
      body: Center(
        child: Text(
          "Data: $amar_baper_param",
          style: TextStyle(fontSize: 34.0),
        ),
      ),
    );
  }
}
