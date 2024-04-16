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
  int _selectedIndex = -1;
  bool _showContainer = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          children: [
            Container(
                height: 330,
                width: double.infinity,
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Column(
                      children: List.generate(6, (index) {
                        return Container(
                            width: double.infinity,
                            color: _selectedIndex == index ? Colors.white : Color(0xFFF5F5F5),
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
                    ),
                    Flexible(
                      flex: 5,
                      child: Container(
                      height: double.infinity,
                      color: Color(0xFFFBFBFB),
                      child: Visibility(
                        visible: _showContainer,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '不限',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '屋苑',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '單棟式大廈',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '村屋',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '唐樓',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '居屋/公屋',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
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
                  children: [
                    Flexible(
                      flex: 1,
                      child: InkWell(
                      onTap: (){
                        setState(() {
                          _selectedIndex = -1;
                          _showContainer = false;
                        });
                      },
                      child: Container(
                        width: 115,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: Color(0xFFEBEBEB),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SvgPicture.asset('assets/icons/reset.svg'),
                            Text(
                              '重置',
                              style: TextStyle(
                                color: Color(0xFF858585),
                                fontSize: 18,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ),
                    SizedBox(width: 15,),
                    Flexible(
                      flex: 2,
                      child: Container(
                      width: 230,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFF50C5D5),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '確定',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ),
                  ],
                )
            ),
          ]
      ),
    );
  }
}
