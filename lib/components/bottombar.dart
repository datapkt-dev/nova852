import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/button.svg'),
          label: '首頁',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/button.svg'),
          label: '消息',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/button.svg'),
          label: '我的',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/button.svg'),
          label: '更多',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
