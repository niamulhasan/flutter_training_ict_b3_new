import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String name;

  const DetailsPage({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Center(
        child: Text("$name"),
      ),
    );
  }
}
