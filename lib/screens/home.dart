import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Lottieパッケージをインポート[cite: 1]

import 'settings.dart'; // 変更後の設定画面ファイルをインポート

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // 画面からはみ出してもスクロール可能にする
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // 上下中央揃え
            children: [
              const SizedBox(height: 20), // 隙間
              // 2. ウロウロするキャラクター（Lottieアニメーション）[cite: 1, 2]
              Lottie.asset(
                'assets/json/walk.json', // 読み込むJSONファイル[cite: 1, 2]
                width: 250, // 横幅[cite: 1]
                height: 250, // 高さ[cite: 1]
                fit: BoxFit.contain, // 枠内での収まり方[cite: 1]
                repeat: true, // ループ再生（ウロウロさせる）[cite: 1, 2]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
