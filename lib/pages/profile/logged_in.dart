import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nova852/pages/profile/payment_list.dart';
import 'contract_history.dart';

class LoggedIn extends StatelessWidget {
  const LoggedIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFF2F2F2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12,),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [const Color(0xFFF5A5A5).withOpacity(0.34), const Color(0xFF98A2FF).withOpacity(0.34)],
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              image: AssetImage('assets/images/profile/user.png'),
                              fit: BoxFit.cover,
                              alignment: Alignment(
                                // 調整這些值來改變圖像的對齊位置
                                0.2, // 水平對齊 -1.0: 左, 0.0: 中, 1.0: 右
                                0, // 垂直對齊 -1.0: 上, 0.0: 中, 1.0: 下
                              ),
                            ),
                            border: Border.all(
                              color: Colors.white, // 邊框顏色
                              width: 2.0, // 邊框寬度
                            ),
                          ),
                        ),
                        const SizedBox(width: 28,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yui Song',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'yui.song@gmail.com',
                              style: TextStyle(
                                color: Color(0xFF6D6D6D),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '6348 8349',
                              style: TextStyle(
                                color: Color(0xFF6D6D6D),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '註冊日期',
                              style: TextStyle(
                                color: Color(0xFF6D6D6D),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              '10/02/2023',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '會員編號',
                              style: TextStyle(
                                color: Color(0xFF6D6D6D),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              '908321',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '承租單位',
                              style: TextStyle(
                                color: Color(0xFF6D6D6D),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              '3',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '每月總租金',
                              style: TextStyle(
                                color: Color(0xFF6D6D6D),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              '\$42,000',
                              style: TextStyle(
                                color: Color(0xFF171717),
                                fontFamily: 'Noto Sans TC',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40,),
            const Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContractHistory()));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      width: 22,
                      height: 22,
                      'assets/icons/profile/contract.svg',
                    ),
                    const SizedBox(width: 12,),
                    const Text(
                      '歷年合約',
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentListPage()));
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      width: 22,
                      height: 22,
                      'assets/icons/profile/Invoice.svg',
                    ),
                    const SizedBox(width: 12,),
                    const Text(
                      '帳單列表',
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontFamily: 'Noto Sans TC',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SvgPicture.asset(
                    width: 22,
                    height: 22,
                    'assets/icons/profile/favorite.svg',
                  ),
                  const SizedBox(width: 12,),
                  const Text(
                    '收藏樓盤',
                    style: TextStyle(
                      color: Color(0xFF171717),
                      fontFamily: 'Noto Sans TC',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SvgPicture.asset(
                    width: 22,
                    height: 22,
                    'assets/icons/profile/setting.svg',
                  ),
                  const SizedBox(width: 12,),
                  const Text(
                    '更改個人資料',
                    style: TextStyle(
                      color: Color(0xFF171717),
                      fontFamily: 'Noto Sans TC',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  SvgPicture.asset(
                    width: 22,
                    height: 22,
                    'assets/icons/profile/contact.svg',
                  ),
                  const SizedBox(width: 12,),
                  const Text(
                    '聯絡客服',
                    style: TextStyle(
                      color: Color(0xFF171717),
                      fontFamily: 'Noto Sans TC',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 40,),
            Container(
              width: 108,
              height: 30,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: const Color(0XFFE3E3E3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                '登出',
                style: TextStyle(
                  color: Color(0XFF171717),
                  fontSize: 14,
                  fontFamily: 'Noto Sans TC',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}
