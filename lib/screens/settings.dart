import 'package:flutter/material.dart'; // 1. インポート

void main() {
  runApp(const SettingsScreen()); // 2. エントリーポイント（アプリの起動）
}

// ==================================================
// 設定画面（マイページ相当）
// ==================================================
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: const Center(
        child: Text('設定・マイページの内容'),
      ),
    );
  }
}