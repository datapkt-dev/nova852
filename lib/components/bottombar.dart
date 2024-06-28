import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/pages/breaking_news/breaking_news.dart';
import 'package:nova852/pages/more/more.dart';
import 'package:nova852/pages/profile/new_profile.dart';
import 'package:nova852/pages/search/search_page.dart';
import '../pages/index/new_index_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _currentIndex = 0;
  final pages = [NewIndexPage(), SearchPage(), NewProfilePage(), BreakingNewsPage(), MorePage()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
            label: '會員',
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
            label: '設定',
          ),
        ],
        currentIndex: _currentIndex,
        fixedColor: Color(0xFF50C5D5),
        onTap: _onItemTapped,
      ),
    );
  }
}
