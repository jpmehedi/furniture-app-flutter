import 'package:flutter/material.dart';
import 'package:furniture_app/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ProductScreen(),
    );
  }
}
