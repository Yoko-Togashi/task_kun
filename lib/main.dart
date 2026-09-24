import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'たすくくん',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainPage(),
    );
  }
}

// ==================================================
// メインページ（下部ナビゲーションの管理）
// ==================================================
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 現在選択されているタブのインデックス
  int _selectedIndex = 0;

  // 4つの主要画面のリスト
  final List<Widget> _pages = [
    const HomeScreen(),
    const ListScreen(),
    const LivingScreen(),
    const HelpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed, // 4つのアイコンを均等配置
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              width: 32, // 正方形のサイズ（24px）
              height: 32,
              // アイコンの色を適用したい場合（単色アイコンなどの場合）
              // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/icon_home_active.svg', // 選択時のアイコン
              width: 32,
              height: 32,
            ),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/list.svg',
              width: 32, // 正方形のサイズ（24px）
              height: 32,
              // アイコンの色を適用したい場合（単色アイコンなどの場合）
              // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/list_active.svg', // 選択時のアイコン
              width: 32,
              height: 32,
            ),
            label: 'リスト',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/living.svg',
              width: 32, // 正方形のサイズ（24px）
              height: 32,
              // アイコンの色を適用したい場合（単色アイコンなどの場合）
              // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/living_active.svg', // 選択時のアイコン
              width: 32,
              height: 32,
            ),
            label: 'リビング',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/help.svg',
              width: 32, // 正方形のサイズ（24px）
              height: 32,
              // アイコンの色を適用したい場合（単色アイコンなどの場合）
              // colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/help_active.svg', // 選択時のアイコン
              width: 32,
              height: 32,
            ),
            label: 'ヘルプ',
          ),
        ],
      ),
    );
  }
}

// ==================================================
// 1. ホーム画面（右上から設定画面へ）
// ==================================================
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
              // 設定画面を開く
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: const Center(child: Text('ホーム画面のコンテンツ')),
    );
  }
}

// ==================================================
// 2. リスト画面
// ==================================================
class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('リスト')),
      body: const Center(child: Text('タスクリスト画面')),
    );
  }
}

// ==================================================
// 3. リビング画面（キャラクター保存リスト）
// ==================================================
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

// ==================================================
// 4. ヘルプ画面
// ==================================================
class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ヘルプ')),
      body: const Center(child: Text('ヘルプ画面')),
    );
  }
}
