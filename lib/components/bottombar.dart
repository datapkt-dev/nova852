import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/pages/breaking_news/breaking_news.dart';
import 'package:nova852/pages/index/index_page.dart';
import 'package:nova852/pages/more/more.dart';
import 'package:nova852/pages/profile/profile.dart';

import '../pages/index/new_index_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _currentIndex = 0;
  final pages = [NewIndexPage(), Container(),ProfilePage(), BreakingNewsPage(), MorePage()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Scaffold(
      body: SafeArea(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              width: 24,
              height: 24,
              color: _currentIndex == 0 ? Color(0xFF50C5D5) : Color(0xFFB3B3B3),
              'assets/icons/bottombar/home.svg',
            ),
            label: '首頁',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              width: 24,
              height: 24,
              color: _currentIndex == 1 ? Color(0xFF50C5D5) : Color(0xFFB3B3B3),
              'assets/icons/bottombar/search.svg',
            ),
            label: '搜尋',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              width: 24,
              height: 24,
              color: _currentIndex == 2 ? Color(0xFF50C5D5) : Color(0xFFB3B3B3),
              'assets/icons/bottombar/personal.svg',
            ),
            label: '個人',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              width: 24,
              height: 24,
              color: _currentIndex == 3 ? Color(0xFF50C5D5) : Color(0xFFB3B3B3),
              'assets/icons/bottombar/message.svg',
            ),
            label: '信息',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              width: 24,
              height: 24,
              color: _currentIndex == 4 ? Color(0xFF50C5D5) : null,
              'assets/icons/bottombar/more_.svg',
            ),
            label: '更多',
          ),
        ],
        currentIndex: _currentIndex,
        fixedColor: Color(0xFF50C5D5),
        onTap: _onItemTapped,
      ),
    );
  }
}
