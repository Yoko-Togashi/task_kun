import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ファイル名変更に伴うインポート
import 'screens/home.dart';
import 'screens/list.dart';
import 'screens/living.dart';
import 'screens/help.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

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
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              width: 32,
              height: 32,
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/home.svg',
              width: 32,
              height: 32,
            ),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/list.svg',
              width: 32,
              height: 32,
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/list.svg',
              width: 32,
              height: 32,
            ),
            label: 'リスト',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/living.svg',
              width: 32,
              height: 32,
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/living.svg',
              width: 32,
              height: 32,
            ),
            label: 'リビング',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/help.svg',
              width: 32,
              height: 32,
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/help.svg',
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
