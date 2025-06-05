import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color mainColor = Color(0xFF800000); // えんじ色

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ki-MAP',
      theme: ThemeData(
        primaryColor: mainColor,
        appBarTheme: AppBarTheme(
          backgroundColor: mainColor,
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: mainColor),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Ki-MAPホーム')),
        body: Center(child: Text('ようこそ！')),
      ),
    );
  }
}
