import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
        title: Text('設定'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Color(0xFFF2F2F2),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3FC9C9C9),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Text(
                        '設定',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                width: 20,
                                height: 20,
                                'assets/icons/setting/globe.svg',
                              ),
                              SizedBox(width: 12,),
                              Text(
                                '語言 / Language',
                                style: TextStyle(
                                  color: Color(0xFF171717),
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans TC',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '繁體中文',
                                style: TextStyle(
                                  color: Color(0xFF6D6D6D),
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans TC',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 12,),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                width: 20,
                                height: 20,
                                'assets/icons/setting/bell.svg',
                              ),
                              SizedBox(width: 12,),
                              Text(
                                '即時通知',
                                style: TextStyle(
                                  color: Color(0xFF171717),
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans TC',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                            child: Switch(
                              value: light,
                              activeColor: Color(0xFF50C5D5),
                              onChanged: (bool value) {
                                setState(() {
                                  light = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Text(
                        '一般',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/home.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            '前往 Nova 852 網站',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/thumbs.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            '評價我們的應用程式',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/facebook.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            '關注 Facebook 專頁',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/share.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            '推薦好友',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Text(
                        '更多',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/twitch.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            '關於我們',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFB3B3B3), width: 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16,),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            width: 20,
                            height: 20,
                            'assets/icons/setting/phone.svg',
                          ),
                          SizedBox(width: 12,),
                          Text(
                            '聯絡我們',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Nova 852  |  2024  |  v1.2.2.3',
                        style: TextStyle(
                          color: Color(0xFFB3B3B3),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),
                  ],
                ),
              ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 5,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3FC9C9C9),
                        blurRadius: 4,
                        offset: Offset(0, -4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
