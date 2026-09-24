import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // 1. Lottieのインポート

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lottieテスト'),
        ),
        body: Center(
          // 2. ここでJSONアニメーションを読み込みます
          child: Lottie.asset(
            'assets/json/bounce.json',
          ),
        ),
      ),
    );
  }
}