import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return SafeArea(
      child: Container(
      color: Colors.white,
      child: Column(
          children: [
            // Container(
            //     height: 330,
            //     width: double.infinity,
            //     child: Row(
            //       children: [
            //         Flexible(
            //           flex: 3,
            //           child: Column(
            //             children: List.generate(6, (index) {
            //               return Container(
            //                   width: double.infinity,
            //                   color: _selectedIndex == index ? Colors.white : Color(0xFFF5F5F5),
            //                   padding: EdgeInsets.all(16),
            //                   child: InkWell(
            //                     onTap: () {
            //                       setState(() {
            //                         _selectedIndex = index;
            //                         if (index == 1) {
            //                           _showContainer = true;
            //                         } else {
            //                           _showContainer = false;
            //                         }
            //                       });
            //                     },
            //                     child: Row(
            //                       children: [
            //                         Text(
            //                           widget.area[index],
            //                           style: TextStyle(
            //                             color: _selectedIndex == index ? Color(0xFF50C5D5) : Color(0xFF333333),
            //                             fontSize: 16,
            //                             fontFamily: 'PingFang TC',
            //                             fontWeight: FontWeight.w400,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   )
            //               );
            //             }),
            //           ),
            //         ),
            //         Flexible(
            //           flex: 5,
            //           child: Container(
            //             height: double.infinity,
            //             color: Color(0xFFFBFBFB),
            //             child: Visibility(
            //               visible: _showContainer,
            //               child: Column(
            //                 children: [
            //                   Container(
            //                     padding: EdgeInsets.all(16),
            //                     alignment: Alignment.centerLeft,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           '不限',
            //                           style: TextStyle(
            //                             color: Color(0xFF333333),
            //                             fontSize: 16,
            //                             fontFamily: 'PingFang TC',
            //                             fontWeight: FontWeight.w400,
            //                           ),
            //                         ),
            //                         Container(
            //                           width: 16,
            //                           height: 16,
            //                           decoration: ShapeDecoration(
            //                             color: Colors.white,
            //                             shape: RoundedRectangleBorder(
            //                               side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
            //                               borderRadius: BorderRadius.circular(2),
            //                             ),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.all(16),
            //                     alignment: Alignment.centerLeft,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           '屋苑',
            //                           style: TextStyle(
            //                             color: Color(0xFF333333),
            //                             fontSize: 16,
            //                             fontFamily: 'PingFang TC',
            //                             fontWeight: FontWeight.w400,
            //                           ),
            //                         ),
            //                         Container(
            //                           width: 16,
            //                           height: 16,
            //                           decoration: ShapeDecoration(
            //                             color: Colors.white,
            //                             shape: RoundedRectangleBorder(
            //                               side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
            //                               borderRadius: BorderRadius.circular(2),
            //                             ),
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.all(16),
            //                     alignment: Alignment.centerLeft,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           '單棟式大廈',
            //                           style: TextStyle(
            //                             color: Color(0xFF333333),
            //                             fontSize: 16,
            //                             fontFamily: 'PingFang TC',
            //                             fontWeight: FontWeight.w400,
            //                           ),
            //                         ),
            //                         Container(
            //                           width: 16,
            //                           height: 16,
            //                           decoration: ShapeDecoration(
            //                             color: Colors.white,
            //                             shape: RoundedRectangleBorder(
            //                               side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
            //                               borderRadius: BorderRadius.circular(2),
            //                             ),
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.all(16),
            //                     alignment: Alignment.centerLeft,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           '村屋',
            //                           style: TextStyle(
            //                             color: Color(0xFF333333),
            //                             fontSize: 16,
            //                             fontFamily: 'PingFang TC',
            //                             fontWeight: FontWeight.w400,
            //                           ),
            //                         ),
            //                         Container(
            //                           width: 16,
            //                           height: 16,
            //                           decoration: ShapeDecoration(
            //                             color: Colors.white,
            //                             shape: RoundedRectangleBorder(
            //                               side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
            //                               borderRadius: BorderRadius.circular(2),
            //                             ),
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.all(16),
            //                     alignment: Alignment.centerLeft,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           '唐樓',
            //                           style: TextStyle(
            //                             color: Color(0xFF333333),
            //                             fontSize: 16,
            //                             fontFamily: 'PingFang TC',
            //                             fontWeight: FontWeight.w400,
            //                           ),
            //                         ),
            //                         Container(
            //                           width: 16,
            //                           height: 16,
            //                           decoration: ShapeDecoration(
            //                             color: Colors.white,
            //                             shape: RoundedRectangleBorder(
            //                               side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
            //                               borderRadius: BorderRadius.circular(2),
            //                             ),
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.all(16),
            //                     alignment: Alignment.centerLeft,
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text(
            //                           '居屋/公屋',
            //                           style: TextStyle(
            //                             color: Color(0xFF333333),
            //                             fontSize: 16,
            //                             fontFamily: 'PingFang TC',
            //                             fontWeight: FontWeight.w400,
            //                           ),
            //                         ),
            //                         Container(
            //                           width: 16,
            //                           height: 16,
            //                           decoration: ShapeDecoration(
            //                             color: Colors.white,
            //                             shape: RoundedRectangleBorder(
            //                               side: BorderSide(width: 1, color: Color(0xFFC2C2C2)),
            //                               borderRadius: BorderRadius.circular(2),
            //                             ),
            //                           ),
            //                         )
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     )
            // ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
              child: Column(
                children: [
                  Row(
                    children: [
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
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '全部用途 (2,093)',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
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
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '住宅 (3,222)',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
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
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '豪宅 (123)',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
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
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '寫字樓 (3,222)',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
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
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '工廈 (123)',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
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
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '商舖 (3,222)',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
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
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '車位 (123)',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 100,
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
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            _selectedIndex = 0;
                            _showContainer = false;
                          });
                        },
                        child: Container(
                          width: 115,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEBEBEB),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                          ),
                          child: Text(
                            '重設',
                            style: TextStyle(
                              color: Color(0xFF858585),
                              fontSize: 18,
                              fontFamily: 'PingFang TC',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
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
                          '確定 (7,623個樓盤)',
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
    ),
    );
  }
}
