import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/image_upload_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color mainColor = Color(0xFF800000); // えんじ色

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '清高万博',
      theme: ThemeData(
        primaryColor: mainColor,
        appBarTheme: AppBarTheme(
          backgroundColor: mainColor,
          foregroundColor: Colors.white,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
