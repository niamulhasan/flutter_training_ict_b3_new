import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String data;
  const NextPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Next Page',
              style: TextStyle(fontSize: 34.0),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              onPressed: () {
                //mukhosto start
                Navigator.of(context).pop();
                //mukhosto end
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
