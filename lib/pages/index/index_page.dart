import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nova852/lab/p1.dart';
// import 'package:nova852/mortgage_page.dart';

import '../../components/greenBackground.dart';
import 'buying_page.dart';
import '../../components/bottombar.dart';
import '../../components/button_s.dart';
import '../../components/featured_items.dart';
import '../../components/info.dart';
import 'mortgage_page.dart';
import 'rental_page.dart';

class IndexPage extends StatefulWidget {
  IndexPage({super.key});

  final List<String> tab = ['租屋', '買樓', '新盤'];

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  String? dropdownValue = '新盤';
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return SingleChildScrollView(
      child: Center(
        child: Stack(
          children: [
            const GreenBackground(),
            Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                    width: 380 * wScale,
                    height: 44 * hScale,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10 * wScale,),
                        DropdownButton(
                          underline: Container(),
                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: widget.tab.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                ),
                              ),
                            );
                          }).toList(), // 转换为列表
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: null,
                            onChanged: null,
                            decoration: InputDecoration(
                              hintText: "輸入街道或路名",
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(height: 16 * hScale,),
                Container(
                  width: 320 * wScale,
                  height: 184 * hScale,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19222222),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        'assets/images/landscape.jpeg',
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: 10,
                  ),
                ), //圖片輪播
                SizedBox(height: 16 * hScale,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonS(
                        buttonText: '租屋',
                        page: RentalPage(),
                        icon: Container(
                          width: 40 * wScale,
                          height: 40 * hScale,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFFFD6B48), Color(0xFFFE7752)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset('assets/icons/rentalpage.svg'),
                        ),
                      ),
                      SizedBox(width: 42 * wScale,),
                      ButtonS(
                        buttonText: '買樓',
                        page: BuyingPage(),
                        icon: Container(
                          width: 40 * wScale,
                          height: 40 * hScale,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF67D7E7), Color(0xFF50C5D5)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset('assets/icons/buyingpage.svg'),
                        ),
                      ),
                      SizedBox(width: 42 * wScale,),
                      ButtonS(
                        buttonText: '按揭',
                        page: MortgagePage(),
                        icon: Container(
                          width: 40 * wScale,
                          height: 40 * hScale,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF46AAF8), Color(0xFF4FB5FA)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          padding: EdgeInsets.all(8),
                          child: SvgPicture.asset('assets/icons/mortgagepage.svg'),
                        ),
                      ),
                    ],
                  ),
                ),  //租屋
                SizedBox(height: 30 * hScale,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        InfoBoard(title: '本月熱盤追擊', subtitle: '本月瀏覽量最高新盤排名', bcolor: 0xFFE7F4F4, large: true,),
                        SizedBox(height: 8 * hScale,),
                        InfoBoard(title: '第五類標題', subtitle: '第五分類副標', bcolor: 0xFFFFE9E9, large: false),
                        SizedBox(height: 8 * hScale,),
                        InfoBoard(title: '第六類標題', subtitle: '第六分類副標', bcolor: 0xFFFEF8E5, large: false),
                      ],
                    ),
                    SizedBox(width: 13 * wScale,),
                    Column(
                      children: [
                        InfoBoard(title: '500萬內筍盤', subtitle: '低價上車', bcolor: 0xFFFEF8E5, large: false),
                        SizedBox(height: 8 * hScale,),
                        InfoBoard(title: '今日熱門筍盤', subtitle: '500萬內筍盤', bcolor: 0xFFE7F4F4, large: true),
                        SizedBox(height: 8 * hScale,),
                        InfoBoard(title: '第四類標題', subtitle: '第四分類副標', bcolor: 0xFFFFE9E9, large: false),
                      ],
                    ),
                  ],
                ),  //三色塊
                SizedBox(height: 28 * hScale,),
                Container(
                  width: 361 * wScale,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '精選',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'PingFang TC',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          InkWell(
                            child: Text(
                              '更多',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onTap: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPageLab()));
                            },

                          )

                        ],
                      ),
                      SizedBox(height: 12 * hScale,),
                      Row(
                        children: [
                          FeaturedItems(img: 'assets/images/house_a.jpeg', price: 900, area: 36, rooms: 2, caption: '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面'),
                          SizedBox(width: 25 * wScale,),
                          FeaturedItems(img: 'assets/images/house_b.jpeg', price: 1688, area: 42, rooms: 3, caption: '獨賣挑高美景大3房'),
                        ],
                      ),
                      SizedBox(height: 15 * hScale,),
                      Row(
                        children: [
                          FeaturedItems(img: 'assets/images/house_c.jpeg', price: 900, area: 36, rooms: 2, caption: '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面'),
                          SizedBox(width: 25 * wScale,),
                          FeaturedItems(img: 'assets/images/house_d.jpeg', price: 900, area: 36, rooms: 2, caption: '獨賣挑高美景大3房'),
                        ],
                      ),
                    ],
                  ),
                ),  //精選
                SizedBox(height: 40 * hScale,),
                SizedBox(
                  width: 361 * wScale,
                  child: Column(
                    children: [
                      Row(
                        children: List.generate(2, (index) {
                          return Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  width: 40 * wScale,
                                  alignment: Alignment.center,
                                  decoration: _selectedIndex == index ? BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xFF50C5D5),
                                        width: 2 * wScale,
                                      ),
                                    ),
                                  ) : null,
                                  child: Text(
                                    widget.tab[index],
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontFamily: 'PingFang TC',
                                      fontSize: 18,
                                      fontWeight: _selectedIndex == index ? FontWeight.w500 : FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 32 * wScale,),
                            ],
                          );
                        }),
                      ),
                      SizedBox(height: 12 * hScale,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12 * hScale),
                        width: 361 * wScale,
                        height: 147 * hScale,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 123 * wScale,
                                  height: 92 * hScale,
                                  child: Image.asset('assets/images/house_d.jpeg'),
                                ),
                                SizedBox(height: 21 * hScale,),
                              ],
                            ),
                            SizedBox(width: 8 * wScale,),
                            Column(
                              children: [
                                Container(
                                  width: 230 * wScale,
                                  height: 19 * hScale,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 52 * wScale,
                                        height: 19 * hScale,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF50C5D5),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                        ),
                                        child: const Text(
                                          '豪華裝潢',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8 * wScale,),
                                      Container(
                                        width: 41 * wScale,
                                        height: 19 * hScale,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(width: 1, color: Color(0xFFD6D6D6)),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        child: const Text(
                                          '近學區',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4 * hScale,),
                                SizedBox(
                                  width: 230 * wScale,
                                  child: Text(
                                    '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 15,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.75,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4 * hScale,),
                                Container(
                                  width: 230 * wScale,
                                  height: 15 * hScale,
                                  child: Row(
                                    children: [
                                      Text(
                                        '實36坪',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 4 * wScale,),
                                      Text(
                                        '2房',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10 * hScale,),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  width: 230 * wScale,
                                  child: Text(
                                    '900 萬',
                                    style: TextStyle(
                                      color: Color(0xFFF12323),
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        width: 361 * wScale,
                        height: 147 * hScale,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 123 * wScale,
                                  height: 92 * hScale,
                                  child: Image.asset('assets/images/house_c.jpeg'),
                                ),
                                SizedBox(height: 21 * hScale,),
                              ],
                            ),
                            SizedBox(width: 8 * wScale,),
                            Column(
                              children: [
                                Container(
                                  width: 230 * wScale,
                                  height: 19 * hScale,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 52 * wScale,
                                        height: 19 * hScale,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF50C5D5),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                        ),
                                        child: const Text(
                                          '豪華裝潢',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8 * wScale,),
                                      Container(
                                        width: 41 * wScale,
                                        height: 19 * hScale,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(width: 1, color: Color(0xFFD6D6D6)),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        child: const Text(
                                          '近學區',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4 * hScale,),
                                SizedBox(
                                  width: 230 * wScale,
                                  child: Text(
                                    '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 15,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4 * hScale,),
                                Container(
                                  width: 230 * wScale,
                                  height: 15 * hScale,
                                  child: Row(
                                    children: [
                                      Text(
                                        '實36坪',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 4 * wScale,),
                                      Text(
                                        '2房',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10 * hScale,),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  width: 230 * wScale,
                                  child: Text(
                                    '1400 萬',
                                    style: TextStyle(
                                      color: Color(0xFFF12323),
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        width: 361 * wScale,
                        height: 147 * hScale,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 123 * wScale,
                                  height: 92 * hScale,
                                  child: Image.asset('assets/images/house_e.jpeg'),
                                ),
                                SizedBox(height: 21 * hScale,),
                              ],
                            ),
                            SizedBox(width: 8 * wScale,),
                            Column(
                              children: [
                                Container(
                                  width: 230 * wScale,
                                  height: 19 * hScale,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 52 * wScale,
                                        height: 19 * hScale,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF50C5D5),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                        ),
                                        child: const Text(
                                          '豪華裝潢',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8 * wScale,),
                                      Container(
                                        width: 41 * wScale,
                                        height: 19 * hScale,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(width: 1, color: Color(0xFFD6D6D6)),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        child: const Text(
                                          '近學區',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4 * hScale,),
                                SizedBox(
                                  width: 230 * wScale,
                                  child: Text(
                                    '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 15,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4 * hScale,),
                                Container(
                                  width: 230 * wScale,
                                  height: 15 * hScale,
                                  child: Row(
                                    children: [
                                      Text(
                                        '實36坪',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 4 * wScale,),
                                      Text(
                                        '2房',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10 * hScale,),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  width: 230 * wScale,
                                  child: Text(
                                    '1280 萬',
                                    style: TextStyle(
                                      color: Color(0xFFF12323),
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
        ,
      ),
    );
  }
}
