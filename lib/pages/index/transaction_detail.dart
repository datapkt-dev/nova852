import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        centerTitle: false,
        title: Text('成交詳情'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 14,),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '將軍澳 東港城 1座 高層 C室',
                style: TextStyle(
                  color: Color(0xFF171717),
                  fontSize: 18,
                  fontFamily: 'Noto Sans TC',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  SvgPicture.asset(
                    width: 14,
                    height: 14,
                    'assets/icons/transaction/location.svg',),
                  SizedBox(width: 10,),
                  Text(
                    '將軍澳 坑口 重華路 8號',
                    style: TextStyle(
                      color: Color(0xFFB3B3B3),
                      fontSize: 12,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Divider(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '成交價',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\$600萬',
                              style: TextStyle(
                                color: Color(0xFFE86100),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36,),
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '呎價 (實用)',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\$4,231',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36,),
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '成交類別',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '註冊處成交',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '實用',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '506呎',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36,),
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '呎價 (建築)',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '\$6,231',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36,),
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '註冊日期',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '04/06/2024',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '建築',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '720呎',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 36,),
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '成交虧損',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '-49.4%',
                              style: TextStyle(
                                color: Color(0xFFEA5454),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 37,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '成交價',
                              style: TextStyle(
                                color: Color(0xFFB3B3B3),
                                fontSize: 12,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '2房1廳',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontSize: 14,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
