import 'package:flutter/material.dart';
import 'package:routing_recap/pages/next.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
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
              'Home Page',
              style: TextStyle(fontSize: 34.0),
            ),
            ElevatedButton(
              onPressed: () {
                //mukhosto start
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NextPage(data: "I am the data one"),
                  ),
                );
                //mukhosto end
              },
              child: Text("Go to Next Page"),
            ),
            ElevatedButton(
              onPressed: () {
                //mukhosto start
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NextPage(data: "I am the data two"),
                  ),
                );
                //mukhosto end
              },
              child: Text("Go to Next Page"),
            ),
            ElevatedButton(
              onPressed: () {
                //mukhosto start
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NextPage(data: "I am the data three"),
                  ),
                );
                //mukhosto end
              },
              child: Text("Go to Next Page"),
            ),
          ],
        ),
      ),
    );
  }
}
