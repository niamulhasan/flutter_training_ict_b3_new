import 'package:flutter/material.dart';

class MyContactTile extends StatelessWidget {
  final Color color;
  final String name;
  final String email;
  final Icon chinnho;

  const MyContactTile({
    Key? key,
    required this.color,
    required this.name,
    required this.email,
    required this.chinnho,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person),
        ),
        title: Text(name),
        subtitle: Text(email),
        trailing: chinnho,
      ),
    );
  }
}
