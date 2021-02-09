import 'package:flutter/material.dart';
import 'widget/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.orange[600],
        ),
      ),
      home: Scaffold(
        body: LoginPage(),
        backgroundColor: Colors.orange[600],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
