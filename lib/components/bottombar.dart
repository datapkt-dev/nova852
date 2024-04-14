import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/pages/breaking_news/breaking_news.dart';
import 'package:nova852/pages/index/index_page.dart';
import 'package:nova852/pages/more/more.dart';
import 'package:nova852/pages/profile/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  // int _selectedIndex = 0;
  int _currentIndex = 0;
  final pages = [IndexPage(), ProfilePage(), BreakingNewsPage(), MorePage()];

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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bottombar/index${_currentIndex == 0 ? '_selected' : ''}.svg'),
            label: '首頁',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bottombar/profile${_currentIndex == 2 ? '_selected' : ''}.svg'),
            label: '我的',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bottombar/breakingnews${_currentIndex == 1 ? '_selected' : ''}.svg'),
            label: '信息',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bottombar/more${_currentIndex == 3 ? '_selected' : ''}.svg'),
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
