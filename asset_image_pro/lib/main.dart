import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffAAD6FF),
                Color(0xff0487FF),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  "assets/images/splash_image.png",
                  width: 240.0,
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              Text(
                "Fast and Secure",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Text(
                "Payments",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Material App',
//       home: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage("assets/images/bg.png"),
//             ),
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xffAAD6FF),
//                 Color(0xff0487FF),
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 child: Image.asset(
//                   "assets/images/splash_image.png",
//                   width: 240.0,
//                 ),
//               ),
//               SizedBox(
//                 height: 28.0,
//               ),
//               Text(
//                 "Fast & Secure",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18.0,
//                 ),
//               ),
//               Text(
//                 "Payments",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 30.0,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
