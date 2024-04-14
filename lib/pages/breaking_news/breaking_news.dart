import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/bottombar.dart';

class BreakingNewsPage extends StatefulWidget {
  const BreakingNewsPage({super.key});

  @override
  State<BreakingNewsPage> createState() => _BreakingNewsPageState();
}

class _BreakingNewsPageState extends State<BreakingNewsPage> {
  List<Widget> list = <Widget>[
    ListTile(
      title: Text(
        '今日新聞',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 18,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      subtitle: Text(
        '市場分析某某某專欄',
        style: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFF45ABF9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/news.svg',
          width: 24.0, // 設定寬度
          height: 24.0, // 設定高度
        ),
      ),
    ),
    ListTile(
      title: Text(
        '訂閱筍盤',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 18,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      subtitle: Text(
        '不限',
        style: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFFF8000),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/speaker.svg',
          width: 24.0, // 設定寬度
          height: 24.0, // 設定高度
        ),
      ),
    ),
    ListTile(
      title: Text(
        '今日筍盤',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 18,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      subtitle: Text(
        '順豐大廈靚裝三房',
        style: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFFFCE27),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/calendar.svg',
          width: 24.0, // 設定寬度
          height: 24.0, // 設定高度
        ),
      ),
    ),
    ListTile(
      title: Text(
        '客戶服務',
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 18,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      subtitle: Text(
        '暫無數據服務',
        style: TextStyle(
          color: Color(0xFF999999),
          fontSize: 16,
          fontFamily: 'PingFang TC',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFFE6A44),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/heart_box.svg',
          width: 24.0, // 設定寬度
          height: 24.0, // 設定高度
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('信息'),
      ),
      body: SafeArea(
        child: Container(
          // color: Colors.blueGrey,
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: ListView(
            children: list,
          ),
        ),
      ),
    );
  }
}
