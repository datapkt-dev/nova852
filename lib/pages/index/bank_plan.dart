import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BankPlan extends StatefulWidget {
  const BankPlan({super.key});

  @override
  State<BankPlan> createState() => _BankPlanState();
}

class _BankPlanState extends State<BankPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
        title: Text(
          '銀行按揭計劃',
          style: TextStyle(
            color: Color(0xFF171717),
            fontSize: 16,
            fontFamily: 'Noto Sans TC',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFF2F2F2),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          '按揭類型',
                          style: TextStyle(
                            color: Color(0xFF171717),
                            fontSize: 15,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 9,),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    SizedBox(width: 16,),
                    Row(
                      children: [
                        Text(
                          'P/H 計劃',
                          style: TextStyle(
                            color: Color(0xFF171717),
                            fontSize: 15,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 9,),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                )
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,),
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Column(
                        children: List.generate(3, (index) {
                          return Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '滙豐銀行',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 10,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              '九成按揭 - H計劃',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              'H = 4.45%',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Image.asset(
                                          width: 100,
                                          height: 27,
                                          'assets/images/bank_plan/HSBC_logo.png',
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 12),
                                      child: Divider(),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text(
                                                'H+1.30%',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Color(0xFFE86100),
                                                  fontSize: 16,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '按揭年利率',
                                                style: TextStyle(
                                                  color: Color(0xFFB3B3B3),
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text(
                                                '5.75%',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Color(0xFFE86100),
                                                  fontSize: 16,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '實際利率',
                                                style: TextStyle(
                                                  color: Color(0xFFB3B3B3),
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text(
                                                '1.30%',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Color(0xFFE86100),
                                                  fontSize: 16,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '現金回贈',
                                                style: TextStyle(
                                                  color: Color(0xFFB3B3B3),
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text(
                                                '2年',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Color(0xFF171717),
                                                  fontSize: 16,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '罰息期',
                                                style: TextStyle(
                                                  color: Color(0xFFB3B3B3),
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '*封頂利率 : P-1.75%',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 10,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 4,),
                                            Text(
                                              '更新日期 : 12/5/2024',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 10,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 30,
                                          width: 136,
                                          alignment: Alignment.center,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(0.99, -0.16),
                                              end: Alignment(-0.99, 0.16),
                                              colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                          child: const Text(
                                            '聯絡銀行',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
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
                              if (index < 2) SizedBox(height: 12,),
                            ],
                          );
                        })
                    ),
                      SizedBox(height: 15,),
                    ],
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
