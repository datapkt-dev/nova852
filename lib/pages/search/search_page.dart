import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text('搜尋'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12,),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,),
              decoration: ShapeDecoration(
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
              shadows: [
                BoxShadow(
                  color: Color(0x3FC9C9C9),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6,),
                    child: Text('買樓'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6,),
                    child: Text('租樓'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6,),
                    child: Text('住宅'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6,),
                    child: Text('豪宅'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6,),
                    child: Text('工廈/商廈'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6,),
                    child: Text('店鋪'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 12,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '熱門搜尋',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Text(
                    '搜尋紀錄',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        width: 93,
                        height: 30,
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
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
