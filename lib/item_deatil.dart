import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/button_s.dart';

class ItemDetail extends StatefulWidget {
  ItemDetail({super.key});

  final List<String> tab = ['基礎信息', '屋內設備', '特色描述', '周邊配套',];

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  int _selectedIndex = 0;

  final ScrollController _scrollController = ScrollController();
  GlobalKey scrollKey = GlobalKey();
  // void _scrollToPosition() {
  //   final RenderBox? scrollTo = scrollKey.currentContext?.findRenderObject() as RenderBox?;
  //   if (scrollTo != null) {
  //     final scrollToOffset = scrollTo.localToGlobal(Offset(0, -168));
  //     _scrollController.animateTo(
  //       scrollToOffset.dy,
  //       duration: Duration(milliseconds: 500),
  //       curve: Curves.easeInOut,
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

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
                      children: List.generate(widget.tab.length, (index) {
                        return Row(
                          children: [
                            Container(
                              width: 89,
                              height: 48,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: _selectedIndex == index ? BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFF50C5D5),
                                    width: 2,
                                  ),
                                ),
                              ) : null,
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      // if (index == 1 && _selectedIndex != 1) {
                                      //   _scrollToPosition();
                                      // }
                                      _selectedIndex = index;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        widget.tab[index],
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
                  controller: _scrollController,
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
                              //child: Image.asset('assets/images/item_img.jpeg'),
                              child: Swiper(
                                itemBuilder: (BuildContext context, int index) {
                                  return Image.asset(
                                    'assets/images/item_img.jpeg',
                                    fit: BoxFit.fill,
                                  );
                                },
                                itemCount: 3,
                              ),
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
                                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                          SizedBox(width: 16,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFE7FCFF),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 1, color: Color(0xFF50C5D5)),
                                          ),
                                        ),
                                        child: Text(
                                          '不可分租',
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
                                  SizedBox(height: 12,),
                                  Container(
                                    width: double.infinity,
                                    height: 75,
                                    padding: EdgeInsets.symmetric(horizontal: 26 * wScale),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(1.00, 0.04),
                                        end: Alignment(-1, -0.04),
                                        colors: [Color(0xFFDAF7F7), Color(0xFFD1EFEF)],
                                      ),
                                    ),
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
                                            SizedBox(width: 13,),
                                            Text(
                                              '475呎',
                                              style: TextStyle(
                                                color: Color(0xFF50C5D5),
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
                                              color: Color(0xFF50C5D5),
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
                                  SizedBox(height: 8,),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 9),
                                    child: Row(
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
                                        SizedBox(width: 10,),
                                        Text(
                                          '包含差餉、地租/地稅、管理費',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 16,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 9),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex:1,
                                            child: Container(
                                              child: Row(
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
                                                  SizedBox(width: 10,),
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
                                            )
                                        ),
                                        Expanded(
                                            flex:1,
                                            child: Container(
                                              child: Row(
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
                                                  SizedBox(width: 10,),
                                                  Text(
                                                    '二個月押金',
                                                    style: TextStyle(
                                                      color: Color(0xFF333333),
                                                      fontSize: 16,
                                                      fontFamily: 'PingFang TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 9),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex:1,
                                            child: Container(
                                              child: Row(
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
                                                  SizedBox(width: 10,),
                                                  Text(
                                                    '精緻裝修',
                                                    style: TextStyle(
                                                      color: Color(0xFF333333),
                                                      fontSize: 16,
                                                      fontFamily: 'PingFang TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                        Expanded(
                                            flex:1,
                                            child: Container(
                                              child: Row(
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
                                                  SizedBox(width: 10,),
                                                  Text(
                                                    '南',
                                                    style: TextStyle(
                                                      color: Color(0xFF333333),
                                                      fontSize: 16,
                                                      fontFamily: 'PingFang TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 9),
                                    child: Row(
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
                                        SizedBox(width: 10,),
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
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 9),
                                    child: Row(
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
                                        SizedBox(width: 10,),
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
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 9),
                                    child: Row(
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
                                            SizedBox(width: 10,),
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
                                  ),
                                  Divider(),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 24),
                                    child: Column(
                                      children: [
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
                                            SizedBox(width: 8,),
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
                                            SizedBox(width: 8,),
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
                                        SizedBox(height: 8,),
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
                                            SizedBox(width: 8,),
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
                                            SizedBox(width: 8,),
                                            Text(
                                              '12345678',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 15,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            // Text(
                                            //   '(代理商提供)',
                                            //   style: TextStyle(
                                            //     color: Color(0xFF999999),
                                            //     fontSize: 13,
                                            //     fontFamily: 'PingFang TC',
                                            //     fontWeight: FontWeight.w400,
                                            //   ),
                                            //   overflow: TextOverflow.visible,
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ), //基礎資訊
                          ],
                        ),
                      ), //照片+資訊
                      SizedBox(height: 8,),
                      Container(
                        key: scrollKey,
                        color: Colors.white,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            SizedBox(height: 16,),
                            Row(
                              children: [
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                //   child: ButtonS(buttonText: '冷氣'),
                                // ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: ButtonS(buttonText: 'TV', icon: SvgPicture.asset('assets/icons/furniture/tv.svg'),),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: ButtonS(buttonText: '洗衣機', icon: SvgPicture.asset('assets/icons/furniture/washer.svg'),),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: ButtonS(buttonText: '冷氣', icon: SvgPicture.asset('assets/icons/furniture/aircon.svg'),),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: ButtonS(buttonText: '微波爐', icon: SvgPicture.asset('assets/icons/furniture/microwave.svg'),),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                  child: ButtonS(buttonText: '雪櫃', icon: SvgPicture.asset('assets/icons/furniture/refrigerator.svg'),),
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
                            SizedBox(height: 16,),
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
                              '周邊配套',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 18,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 16,),
                            Container(
                              width: double.infinity,
                              height: 215,
                              decoration: ShapeDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                              ),
                              child: Image.asset(
                                'assets/images/map.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: SvgPicture.asset('assets/icons/facility/bank.svg'),
                                        onTap: () {
                                        },
                                      ),
                                      SizedBox(height: 4 * hScale,),
                                      Text('交通')
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: SvgPicture.asset('assets/icons/facility/hospital.svg'),
                                        onTap: () {
                                        },
                                      ),
                                      SizedBox(height: 4 * hScale,),
                                      Text('交通')
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: SvgPicture.asset('assets/icons/facility/restaurant.svg'),
                                        onTap: () {
                                        },
                                      ),
                                      SizedBox(height: 4 * hScale,),
                                      Text('交通')
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: SvgPicture.asset('assets/icons/facility/school.svg'),
                                        onTap: () {
                                        },
                                      ),
                                      SizedBox(height: 4 * hScale,),
                                      Text('交通')
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: SvgPicture.asset('assets/icons/facility/supermarket.svg'),
                                        onTap: () {
                                        },
                                      ),
                                      SizedBox(height: 4 * hScale,),
                                      Text('交通')
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: SvgPicture.asset('assets/icons/facility/trafic.svg'),
                                        onTap: () {
                                        },
                                      ),
                                      SizedBox(height: 4 * hScale,),
                                      Text('交通')
                                    ],
                                  ),
                                ),
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                //   child: ButtonS(buttonText: '交通'),
                                // ),
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                //   child: ButtonS(buttonText: '交通'),
                                // ),
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                //   child: ButtonS(buttonText: '交通'),
                                // ),
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                //   child: ButtonS(buttonText: '交通'),
                                // ),
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                //   child: ButtonS(buttonText: '交通'),
                                // ),
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6 * wScale),
                                //   child: ButtonS(buttonText: '交通'),
                                // ),
                              ],
                            ),
                            SizedBox(height: 16,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 9),
                              child: Row(
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
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 9),
                              child: Row(
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
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 9),
                              child: Row(
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
                            ),
                          ],
                        ),
                      ), //周邊配套
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
                            ),
                            SizedBox(height: 16,),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(12),
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(-1, 0),
                                  end: Alignment(1, 0),
                                  colors: [Color(0xFFF3F3F3), Color(0x00EBEBEB)],
                                ),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage('assets/icons/saler_male.png'),
                                      ),
                                      SizedBox(width: 8,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '何小姐',
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 18,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '牌照：E-123456',
                                            style: TextStyle(
                                              color: Color(0xFF999999),
                                              fontSize: 15,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 48,
                                        height: 48,
                                        padding: EdgeInsets.all(10),
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFF2E3),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(47),
                                          ),
                                        ),
                                        child: SvgPicture.asset('assets/icons/phone.svg'),
                                      ),
                                      SizedBox(width: 11,),
                                      Container(
                                        width: 48,
                                        height: 48,
                                        padding: EdgeInsets.all(10),
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFE9FBF0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(47),
                                          ),
                                        ),
                                        child: SvgPicture.asset('assets/icons/VoIP.svg'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 9),
                              child: Row(
                                children: [
                                  Text(
                                    '地產代理',
                                    style: TextStyle(
                                      color: Color(0xFF858585),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '志豐地產',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 9),
                              child: Row(
                                children: [
                                  Text(
                                    '公司牌照',
                                    style: TextStyle(
                                      color: Color(0xFF858585),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Ｃ-123456',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 9),
                              child: Row(
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
                                  SizedBox(width: 10,),
                                  Text(
                                    '元朗鳳小南街9號好順利大廈',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                              decoration: ShapeDecoration(
                                color: Color(0xFFE7FCFF),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF96D9FF)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 72,
                                        height: 49,
                                        child: Image.asset(
                                          'assets/images/house_b.jpeg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(width: 18,),
                                      Column(
                                        children: [
                                          Text(
                                            '3個',
                                            style: TextStyle(
                                              color: Color(0xFF37B8CA),
                                              fontSize: 18,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '盤售',
                                            style: TextStyle(
                                              color: Color(0xFF37B8CA),
                                              fontSize: 15,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      VerticalDivider(
                                        width: 20,
                                        thickness: 10,
                                        indent: 20,
                                        endIndent: 0,
                                        color: Colors.red,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '5個',
                                            style: TextStyle(
                                              color: Color(0xFF37B8CA),
                                              fontSize: 18,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '租盤',
                                            style: TextStyle(
                                              color: Color(0xFF37B8CA),
                                              fontSize: 15,
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
                                      Column(
                                        children: [
                                          Text(
                                            '查看代理',
                                            style: TextStyle(
                                              color: Color(0xFF37B8CA),
                                              fontSize: 15,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '所有放盤',
                                            style: TextStyle(
                                              color: Color(0xFF37B8CA),
                                              fontSize: 15,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 8,),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF99DDE7),
                                          shape: OvalBorder(),
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16,),
                            Divider(),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '溫馨提醒',
                                      style: TextStyle(
                                        color: Color(0xFF858585),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/search.svg',
                                      color: Color(0xFF858585), // 使用'defaultColor'属性
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '我要投訴',
                                      style: TextStyle(
                                        color: Color(0xFF125CEB),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 8,),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                    ),
                                  ],
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
                              '更多推薦',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 18,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 136,
                                  height: 116,
                                  color: Color(0xFFD9D9D9),
                                  child: Image.asset(
                                    'assets/images/house_a.jpeg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width: 200 * wScale,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 18,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w500,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        '車位｜太古城',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        '\$16800 /月',
                                        style: TextStyle(
                                          color: Color(0xFFF12323),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Container(
                  //   width: 40,
                  //   height: 40,
                  //   decoration: ShapeDecoration(
                  //     color: Color(0xFFD9D9D9),
                  //     shape: OvalBorder(),
                  //   ),
                  //   child: Image.asset('assets/icons/saler_male.png'),
                  // ),
                  CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/icons/saler_female.png'),
                  ),
                  SizedBox(width: 4,),
                  Text(
                    'Tiffany Chan',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 93,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Color(0xFF50C5D5),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '電話查詢',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'PingFang TC',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(width: 9,),
                  Container(
                    width: 93,
                    height: 48,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.96, -0.29),
                        end: Alignment(-0.96, 0.29),
                        colors: [Color(0xFF59DA72), Color(0xFF4AC662)],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'whatsapp\n查詢',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'PingFang TC',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}
