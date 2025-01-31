import 'package:flutter/material.dart';
import 'package:orange_valley_caa/pages/details_page.dart';
import 'package:orange_valley_caa/pages/home_page.dart';

void main() {
  runApp(OrangeValleyApp());
}

class OrangeValleyApp extends StatelessWidget {
  const OrangeValleyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}