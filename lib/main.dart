import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hissa/HomePage.dart';
import 'package:hissa/formData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: homePage()
    );
  }
}

