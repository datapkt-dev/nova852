import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AreaWidget2 extends StatefulWidget {
  AreaWidget2({super.key});

  final List<String> zone = ['分區', '港鐵'];
  final List<String> area = ['全香港', '港島', '九龍', '新界', '離島', '海外'];

  @override
  State<AreaWidget2> createState() => _AreaWidgetState();
}

class _AreaWidgetState extends State<AreaWidget2> {
  int _selectedIndex = 0;
  int _selectedZone = -1;
  bool _showArea = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F6F7),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: List.generate(2, (index) {
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedZone = index;
                          if (index == 0) {
                            _showArea = true;
                          } else {
                            _showArea = false;
                          }
                        });
                      },
                      child: Container(
                        height: double.infinity,
                        // color: Colors.deepOrange,
                        alignment: Alignment.center,
                        decoration: _selectedZone == index ? BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF50C5D5),
                              width: 2,
                            ),
                          ),
                        ) : null,
                        child: Text(
                          widget.zone[index],
                          style: TextStyle(
                            color: Color(0xFF50C5D5),
                            fontSize: 18,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 28,)
                  ],
                );
              }),
            ),
          ),
          Container(
              height: 330,
              width: double.infinity,
              child: Visibility(
                visible: _showArea,
                child: Column(
                  children: List.generate(6, (index) {
                    return Container(
                        color: _selectedIndex == index ? Colors.white : null,
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
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
                              SizedBox(width: 10,),
                              Text(
                                '（30207）',
                                style: TextStyle(
                                  color: Color(0xFF858585),
                                  fontSize: 13,
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
            ),
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
        ],
      ),
    );
  }
}
