import 'package:flutter/material.dart';

class LivingScreen extends StatelessWidget {
  const LivingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('リビング')),
      body: const Center(child: Text('キャラクター一覧画面')),
    );
  }
}
