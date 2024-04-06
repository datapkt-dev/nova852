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

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        // Navigator.push(context, MaterialPageRoute(builder: (context) => IndexPage()));
        break;
      case 1:
        // Navigator.push(context, MaterialPageRoute(builder: (context) => BreakingNewsPage()));
        break;
      case 2:
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
        break;
      case 3:
        // Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/bottombar/index${_selectedIndex == 0 ? '_selected' : ''}.svg'),
          label: '首頁',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/bottombar/breakingnews${_selectedIndex == 1 ? '_selected' : ''}.svg'),
          label: '消息',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/bottombar/profile${_selectedIndex == 2 ? '_selected' : ''}.svg'),
          label: '我的',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/bottombar/more${_selectedIndex == 3 ? '_selected' : ''}.svg'),
          label: '更多',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFF50C5D5),
      onTap: _onItemTapped,
    );
  }
}
