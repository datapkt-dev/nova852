import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/button_s.dart';

class ItemDetail extends StatefulWidget {
  ItemDetail({super.key});

  final List<String> tab2 = ['基礎信息', '屋內設備', '特色描述', '周邊配套',];

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4房1廳 ＄23,500/月'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/search2.svg'),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/navLocation.svg'),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFFF5F6F7),
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 48,
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(widget.tab2.length, (index) {
                        return Row(
                          children: [
                            Container(
                              width: 89,
                              height: 48,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: _selectedIndex == index ? BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFFFF8000),
                                    width: 2,
                                  ),
                                ),
                              ) : null,
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        widget.tab2[index],
                                        style: TextStyle(
                                          color: _selectedIndex == index ? Color(0xFF333333) : Color(0xFF999999),
                                          fontFamily: 'PingFang TC',
                                          fontSize: 18,
                                          //fontWeight: _selectedIndex == index ? FontWeight.w500 : FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(width: 16,),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 280,
                              color: Colors.green,
                            ), //照片
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                              child: Column(
                                children: [
                                  Text(
                                    '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 20,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w600,
                                      //height: 0.07,
                                      //letterSpacing: 1,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                '\$16,900/月',
                                                style: TextStyle(
                                                  color: Color(0xFFF12323),
                                                  fontSize: 24,
                                                  fontFamily: 'PingFang TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '租金',
                                                style: TextStyle(
                                                  color: Color(0xFFC2C2C2),
                                                  fontSize: 13,
                                                  fontFamily: 'PingFang TC',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                '2房2廳',
                                                style: TextStyle(
                                                  color: Color(0xFFF12323),
                                                  fontSize: 24,
                                                  fontFamily: 'PingFang TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '間隔',
                                                style: TextStyle(
                                                  color: Color(0xFFC2C2C2),
                                                  fontSize: 13,
                                                  fontFamily: 'PingFang TC',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 77,
                                        height: 28,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFF7EB),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1, color: Color(0xFFFF8000)),
                                          ),
                                        ),
                                        child: Text(
                                          '不可分租',
                                          style: TextStyle(
                                            color: Color(0xFFFF8000),
                                            fontSize: 15,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    color: Color(0xFFFFF7EB),
                                    width: double.infinity,
                                    height: 75,
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '實用',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 15,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '475呎',
                                              style: TextStyle(
                                                color: Color(0xFFFF8000),
                                                fontSize: 15,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                            width: 95,
                                            height: 38,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFF8000),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '誠可議價',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontFamily: 'PingFang TC',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '租金',
                                        style: TextStyle(
                                          color: Color(0xFF858585),
                                          fontSize: 16,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '包含差餉、地租/地稅、管理費',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 16,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '用途',
                                            style: TextStyle(
                                              color: Color(0xFF858585),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '住宅-村屋',
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '按金',
                                            style: TextStyle(
                                              color: Color(0xFF858585),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '二個月押金',
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '裝修',
                                            style: TextStyle(
                                              color: Color(0xFF858585),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '雅緻裝修',
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '坐向',
                                            style: TextStyle(
                                              color: Color(0xFF858585),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '南',
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '樓層',
                                            style: TextStyle(
                                              color: Color(0xFF858585),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '地下/（共3層）',
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '查詢樓層',
                                            style: TextStyle(
                                              color: Color(0xFF125CEB),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '屋齡',
                                        style: TextStyle(
                                          color: Color(0xFF858585),
                                          fontSize: 16,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '14年',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 16,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '地址',
                                            style: TextStyle(
                                              color: Color(0xFF858585),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '新界元朗 工安路68號',
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 16,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      Text(
                                        '瀏覽人數',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '92',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      VerticalDivider(
                                        width: 20,
                                        thickness: 10,
                                        indent: 20,
                                        endIndent: 0,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        '刊登時間',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '2024/02/22',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '房源編號',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        'R1131174',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      VerticalDivider(
                                        width: 20,
                                        thickness: 10,
                                        indent: 20,
                                        endIndent: 0,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        '物業編號',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '12345678',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '(代理商提供)',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ), //基礎資訊
                          ],
                        ),
                      ), //照片+資訊
                      SizedBox(height: 8,),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '屋內設備',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 18,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '查詢更多傢私',
                                      style: TextStyle(
                                        color: Color(0xFF125CEB),
                                        fontSize: 16,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 16,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: ButtonS(buttonText: '冷氣'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: ButtonS(buttonText: '熱水爐'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: ButtonS(buttonText: '床'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), //屋內設備
                      SizedBox(height: 8,),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '特色描述',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 18,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 16,),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: [
                                Container(
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F6F7),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    '可明火煮食',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F6F7),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    '不可以養寵物',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F6F7),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    '開陽景',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F6F7),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    '市景',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F6F7),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    '游泳池',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F6F7),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    '超級市場',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F6F7),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                  child: Text(
                                    '便利商店',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                '實景圖片，馬上看，求好客',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 13,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            ExpansionTile(
                              title: Text(
                                '展開詳細',
                                style: TextStyle(
                                  color: Color(0xFF858585),
                                  fontSize: 13,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              children: [
                                Text(
                                  '詳細內容',
                                  style: TextStyle(
                                    color: Color(0xFF858585),
                                    fontSize: 13,
                                    fontFamily: 'PingFang TC',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), //特色描述
                      SizedBox(height: 8,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '熱門查詢',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 18,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 16,),
                            Wrap(
                              runSpacing: 10,
                              spacing: 10,
                              children: [
                                Container(
                                  color: Color(0xFFF3F4F6),
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('assets/icons/search2.svg'),
                                      SizedBox(width: 8,),
                                      Text(
                                        '方便停車嗎？',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                Container(
                                  color: Color(0xFFF3F4F6),
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('assets/icons/search2.svg'),
                                      SizedBox(width: 8,),
                                      Text(
                                        '這個盤還嗎？',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                Container(
                                  color: Color(0xFFF3F4F6),
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('assets/icons/search2.svg'),
                                      SizedBox(width: 8,),
                                      Text(
                                        '可以養寵物嗎？',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                Container(
                                  color: Color(0xFFF3F4F6),
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('assets/icons/search2.svg'),
                                      SizedBox(width: 8,),
                                      Text(
                                        'WIFI免費嗎？',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '周邊配套',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 18,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '詢問周邊詳情',
                                  style: TextStyle(
                                    color: Color(0xFF125CEB),
                                    fontSize: 16,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16,),
                            Container(
                              width: double.infinity,
                              height: 215,
                              decoration: ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                  child: ButtonS(buttonText: '交通'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                  child: ButtonS(buttonText: '交通'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                  child: ButtonS(buttonText: '交通'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                  child: ButtonS(buttonText: '交通'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                  child: ButtonS(buttonText: '交通'),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                  child: ButtonS(buttonText: '交通'),
                                ),
                              ],
                            ),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '元隆街巴士站',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '200m',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 16,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '元隆街巴士站',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '200m',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 16,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '元隆街巴士站',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  '200m',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
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
                      SizedBox(height: 8,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '聯絡放盤人',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 18,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
