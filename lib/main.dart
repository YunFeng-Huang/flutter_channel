import 'dart:io';
import 'package:flutter/material.dart';
import 'home_page.dart';

// void main() => runApp(MainApp());

// class MainApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

//     String title ="";
//     if (Platform.isIOS) {
//       //ios相关代码
//       title = "flutter 与 Ios 双向互调 ";
//     } else if (Platform.isAndroid) {
//       //android相关代码
//       title = "flutter 与 Android 双向互调";
//     }
//     return MaterialApp(
//       title: title,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title),
//     );
//   }
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = "";
    if (Platform.isIOS) {
      title = "flutter 与 Ios 双向互调 ";
    } else if (Platform.isAndroid) {
      //android相关代码
      title = "flutter 与 Android 双向互调";
    }
    return MaterialApp(home: MyHomePage(title), routes: {
      '/home': (context) => MyHomePage(title),
      '/form': (context) => FormDemo(),
      '/search': (context) => SearchPage(),
    });
  }
}

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Text('FormDemo'),
        onTap: () {
          Navigator.pushNamed(context, '/home', arguments: {"ceshi": 123});
        },
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Text('SearchPage'),
        onTap: () {
          Navigator.pushNamed(context, '/home', arguments: {"ceshi": 123});
        },
      ),
    );
  }
}
