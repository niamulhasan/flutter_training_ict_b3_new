import 'package:flutter/material.dart';

class MyCartAction extends StatelessWidget {
  const MyCartAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, top: 60.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: [
            Expanded(
              child: Icon(Icons.remove),
            ),
            Expanded(
              child: Text("2"),
            ),
            Expanded(
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
