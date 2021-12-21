import 'package:flutter/material.dart';

import 'second.dart';

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
      body: Center(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                          amar_baper_param: "Amar bapar param er value"),
                    ),
                  );
                },
                child: Text("Go To Second Page with Data"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                          amar_baper_param: "Amar dadar param er value"),
                    ),
                  );
                },
                child: Text("Go To Second Page with Data 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
