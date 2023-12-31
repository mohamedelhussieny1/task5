import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_color.dart';
import 'package:flutter_application_5/image.dart';
import 'package:flutter_application_5/screans/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(),
    );
  }
}
