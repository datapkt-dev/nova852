import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  int _LowerBlockIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('成交紀錄'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12,),
        color: Color(0xFFF2F2F2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '最近成交',
                          style: TextStyle(
                            color: Color(0xFF171717),
                            fontSize: 18,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 129,
                          height: 24,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 0.50,
                                color: Color(0xFF07A1B4),
                              ),
                              borderRadius: BorderRadius.circular(21.50),
                            ),
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: _LowerBlockIndex == 0 ? 12 : 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _LowerBlockIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    decoration: _LowerBlockIndex == 0 ? ShapeDecoration(
                                      color: Color(0xFF07A1B4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(21.50),
                                      ),
                                    ) : null,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '售',
                                      style: TextStyle(
                                        color: _LowerBlockIndex == 0 ? Colors.white : Color(0xFF07A1B4),
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans TC',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: _LowerBlockIndex == 1 ? 12 : 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _LowerBlockIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: _LowerBlockIndex == 1 ? ShapeDecoration(
                                      color: Color(0xFF07A1B4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(21.50),
                                      ),
                                    ) : null,
                                    child: Text(
                                      '租',
                                      style: TextStyle(
                                        color: _LowerBlockIndex == 1 ? Colors.white : Color(0xFF07A1B4),
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans TC',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(5, (index) {
                        return Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: index < 4 ? const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFFB3B3B3),
                                  width: 1,
                                )
                            ),
                          ) : null,
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                  '東港城 1座 高層 C室',
                                  style: TextStyle(
                                    color: Color(0xFF171717),
                                    fontSize: 18,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                  Row(
                                    children: [
                                      Text(
                                        '\$600',
                                        style: TextStyle(
                                          color: Color(0xFFE86100),
                                          fontSize: 16,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '萬',
                                        style: TextStyle(
                                          color: Color(0xFFE86100),
                                          fontSize: 12,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '將軍澳 | 2房1廳',
                                    style: TextStyle(
                                      color: Color(0xFFB3B3B3),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '實:430呎',
                                    style: TextStyle(
                                      color: Color(0xFFB3B3B3),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF07A1B4),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                    ),
                                    child: Text(
                                      '成交',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 12,
                                        fontFamily: 'Noto Sans TC',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  const Text(
                                    '06/04/2023',
                                    style: TextStyle(
                                      color: Color(0xFFB3B3B3),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      width: 164,
                      height: 30,
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
                        '更多成交紀錄',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 24,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),
                child: Column(
                  children: [
                    Text(
                      '十大成交屋苑',
                      style: TextStyle(
                        color: Color(0xFF171717),
                        fontSize: 18,
                        fontFamily: 'Noto Sans TC',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 27,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '全港',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 15,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '全港',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 15,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '全港',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 15,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '全港',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 15,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Column(
                      children: List.generate(10, (index) {
                        return Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: index < 9 ? const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFFB3B3B3),
                                  width: 1,
                                )
                            ),
                          ) : null,
                          child: const Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '東港城',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 18,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '\$12,345/呎',
                                    style: TextStyle(
                                      color: Color(0xFFE86100),
                                      fontSize: 16,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '將軍澳',
                                    style: TextStyle(
                                      color: Color(0xFFB3B3B3),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '平均成交價',
                                    style: TextStyle(
                                      color: Color(0xFFB3B3B3),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '過去30天成交量：50宗',
                                  style: TextStyle(
                                    color: Color(0xFFB3B3B3),
                                    fontSize: 14,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      width: 164,
                      height: 30,
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
                        '更多成交紀錄',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
