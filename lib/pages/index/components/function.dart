import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FunctionWidget2 extends StatefulWidget {
  FunctionWidget2({super.key});

  final List<String> zone = ['分區', '港鐵'];
  final List<String> area = ['全部用途', '住宅', '寫字樓', '工廠大廈', '全部用途', '住宅'];

  @override
  State<FunctionWidget2> createState() => _FunctionWidgetState();
}

class _FunctionWidgetState extends State<FunctionWidget2> {
  int _selectedIndex = 0;
  bool _showContainer = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
              height: 330,
              width: double.infinity,
              color: Color(0xFFF5F6F7),
              child: Row(
                children: [
                  Column(
                  children: List.generate(6, (index) {
                    return Container(
                      width: 140,
                      color: _selectedIndex == index ? Colors.white : null,
                      padding: EdgeInsets.all(16),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                            if (index == 1) {
                              _showContainer = true;
                            } else {
                              _showContainer = false;
                            }
                          });
                        },
                        child: Row(
                          children: [
                            Text(
                              widget.area[index],
                              style: TextStyle(
                                color: _selectedIndex == index ? Color(0xFF50C5D5) : Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )
                    );
                  }),
                ),
                  Container(
                    width: 253,
                    height: double.infinity,
                    color: Color(0xFFFBFBFB),
                    child: Visibility(
                      visible: _showContainer,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '不限',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '屋苑',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '單棟式大廈',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '村屋',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '唐樓',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '居屋/公屋',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 16,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/search2.svg'),
                      SizedBox(width: 8,),
                      Text(
                        '更新並儲存以上搜尋條件',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF50C5D5)),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child: Text(
                      '儲存',
                      style: TextStyle(
                        color: Color(0xFF50C5D5),
                        fontSize: 15,
                        fontFamily: 'PingFang TC',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('重置'),
                  Text('確定'),
                ],
              )
          ),
        ]
    );
  }
}
