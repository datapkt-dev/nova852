import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List tab = ['買樓', '租樓', '住宅', '豪宅', '工商', '店鋪', '車位',];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text('搜尋'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/search_page/search.svg'),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/search_page/map-pin.svg'),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 12,),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF171717),),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: '地區 / 屋苑 / 港鐵',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 13,),
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6),
                ),
              ),
              // shadows: [
              //   BoxShadow(
              //     color: Color(0x3FC9C9C9),
              //     blurRadius: 4,
              //     offset: Offset(0, 4),
              //     spreadRadius: 0,
              //   )
              // ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(tab.length, (index) {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                      decoration: _selectedIndex == index ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFF131313),
                            width: 3,
                          ),
                        ),
                      )
                          : BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFFB3B3B3),
                            width: 3,
                          ),
                        ),
                      ),
                      child: Text(
                        tab[index],
                        style: TextStyle(
                          color: _selectedIndex == index ? Color(0xFF07A1B4) : Color(0xFF6D6D6D),
                          fontSize: 15,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFFF2F2F2),
            child: Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 12,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '熱門搜尋',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 18,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Wrap(
                        spacing: 20,
                        runSpacing: 24,
                        children: List.generate(12, (index) {
                          return Container(
                            width: 62,
                            height: 22,
                            alignment: Alignment.center,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF07A1B4)),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: Text(
                              'Tagging',
                              style: TextStyle(
                                color: Color(0xFF07A1B4),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '搜尋紀錄',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 18,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '清除搜尋紀錄',
                            style: TextStyle(
                              color: Color(0xFF07A1B4),
                              fontSize: 14,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: List.generate(5, (index) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 12,),
                            child: Text(
                              'Record ${index +1}',
                              style: TextStyle(
                                color: Color(0xFF6D6D6D),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
