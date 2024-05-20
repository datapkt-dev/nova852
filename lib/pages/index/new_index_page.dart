import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class NewIndexPage extends StatefulWidget {
  const NewIndexPage({super.key});

  @override
  State<NewIndexPage> createState() => _NewIndexPageState();
}

class _NewIndexPageState extends State<NewIndexPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 197,
            child: Swiper(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  'assets/images/index_banner.png',
                  fit: BoxFit.fill,
                );
              },
              pagination: SwiperPagination(),
            ),
          ),
          SizedBox(height: 10),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 33,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.50, color: Color(0xFF171717)),
                              borderRadius: BorderRadius.circular(21.50),
                            ),
                          ),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 11,
                                child: Container(
                                  height: 33,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF171717),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(21.50),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '我想買樓',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                  flex: 10,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '我想租樓',
                                      style: TextStyle(
                                        color: Color(0xFFB3B3B3),
                                        fontSize: 12,
                                        fontFamily: 'Noto Sans TC',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 216,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Flexible(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/index_block_buying.png'),
                                            fit: BoxFit.cover,
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              height: 113,
                                              width: 103,
                                              'assets/images/searching.png',
                                            ),
                                            Text(
                                              '搜尋心水樓盤',
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
                                    ),
                                    SizedBox(height: 4,),
                                    Container(
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/index_block_buying.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            width: 51,
                                            height: 51,
                                            'assets/images/shop.png',
                                          ),
                                          Text(
                                            '店鋪',
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
                              ),
                              SizedBox(width: 4,),
                              Flexible(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/index_block_buying.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            width: 51,
                                            height: 51,
                                            'assets/images/residential.png',
                                          ),
                                          Text(
                                            '住宅',
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
                                    SizedBox(height: 4,),
                                    Container(
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/index_block_buying.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            width: 51,
                                            height: 51,
                                            'assets/images/mansion.png',
                                          ),
                                          Text(
                                            '豪宅',
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
                                    SizedBox(height: 4,),
                                    Container(
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/index_block_buying.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            width: 51,
                                            height: 51,
                                            'assets/images/office.png',
                                          ),
                                          Text(
                                            '工廈/商廈',
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
                                    SizedBox(height: 4,),
                                    Container(
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/index_block_buying.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            width: 51,
                                            height: 51,
                                            'assets/images/parking.png',
                                          ),
                                          Text(
                                            '車位',
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
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                height: 176,
                                width: double.infinity,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/buying_featured.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 5,
                                    left: 5
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '精選新盤 (售)',
                                        style: TextStyle(
                                          color: Color(0xFF171717),
                                          fontSize: 14,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        'Nova為你推介最新精選筍盤',
                                        style: TextStyle(
                                          color: Color(0xFF171717),
                                          fontSize: 10,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 4,),
                            Flexible(
                              flex: 1,
                              child: Column(
                                children: [
                                  Container(
                                    height: 86,
                                    width: double.infinity,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/buying_discount.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 5,
                                          left: 5
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '優惠上車盤',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 14,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            '600萬內筍盤',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 10,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Container(
                                    height: 86,
                                    width: double.infinity,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/buying_hot.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 5,
                                          left: 5
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '本月熱門新盤',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 14,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            '新盤同你逐個睇',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 10,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
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
                  SizedBox(height: 12,),
                  Column(
                    children: [
                      Text(
                        '相關工具',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 14,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset('assets/icons/tools/tools_a.svg'),
                                Text(
                                  '屋苑成交',
                                  style: TextStyle(
                                    color: Color(0xFF171717),
                                    fontSize: 10,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset('assets/icons/tools/tools_b.svg'),
                                Text(
                                  '按揭計劃',
                                  style: TextStyle(
                                    color: Color(0xFF171717),
                                    fontSize: 10,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset('assets/icons/tools/tools_c.svg'),
                                Text(
                                  '銀行計劃',
                                  style: TextStyle(
                                    color: Color(0xFF171717),
                                    fontSize: 10,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset('assets/icons/tools/tools_d.svg'),
                                Text(
                                  '電子租約',
                                  style: TextStyle(
                                    color: Color(0xFF171717),
                                    fontSize: 10,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset('assets/icons/tools/tools_e.svg'),
                                Text(
                                  '聯絡我們',
                                  style: TextStyle(
                                    color: Color(0xFF171717),
                                    fontSize: 10,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '精選樓盤',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 14,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '更多',
                        style: TextStyle(
                          color: Color(0xFF07A1B4),
                          fontSize: 10,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 4,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(3, (index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Container(
                              width: 286,
                              height: 291,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 286,
                                        height: 181,
                                        decoration: ShapeDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/featured_item.png'),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                        ),
                                      ),
                                      Container(
                                        width: 50,
                                        height: 22,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF171717),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(6),
                                              bottomRight: Radius.circular(6),
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(width: 4,),
                                            SvgPicture.asset(
                                              width: 14,
                                              height: 14,
                                              'assets/icons/diamond.svg',
                                            ),
                                            SizedBox(width: 2,),
                                            const Text(
                                              '精選',
                                              style: TextStyle(
                                                color: Color(0xFFF0C790),
                                                fontSize: 12,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 12, right: 12, bottom: 14, top: 3),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '將軍澳 東港城 1座 高層 C室',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '實用 463呎',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 10,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Text(
                                              '@ \$10,234',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 10,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '1房 1廳',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 7,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 57,
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  decoration: ShapeDecoration(
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Tagging',
                                                    style: TextStyle(
                                                      color: Color(0xFF07A1B4),
                                                      fontSize: 8,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 4,),
                                                Container(
                                                  width: 57,
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  decoration: ShapeDecoration(
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Tagging',
                                                    style: TextStyle(
                                                      color: Color(0xFF07A1B4),
                                                      fontSize: 8,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 64,
                                              height: 20,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFE86100),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '\$900',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    '萬',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                      height: 0.22,
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
                          );
                        })
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text(
                    '最新放盤',
                    style: TextStyle(
                      color: Color(0xFF171717),
                      fontSize: 14,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 25, left: 7, right: 7, bottom: 15,),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          child: Container(
                            width: double.infinity,
                            height: 33,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.50, color: Color(0xFF171717)),
                                borderRadius: BorderRadius.circular(21.50),
                              ),
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 11,
                                  child: Container(
                                    height: 33,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF171717),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(21.50),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '我想買樓',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Noto Sans TC',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                    flex: 10,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '我想租樓',
                                        style: TextStyle(
                                          color: Color(0xFFB3B3B3),
                                          fontSize: 12,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Column(
                          children: List.generate(4, (index) {
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: index < 3 ? BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xFFB3B3B3),
                                      width: 1,
                                    )
                                ),
                              ) : null,
                              child: Row(
                                children: [
                                  Container(
                                    width: 120,
                                    height: 132,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/featured_item.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '將軍澳 東港城 1座 高層 C室',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              '實用 463呎',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 10,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: 8,),
                                            Text(
                                              '@ \$10,234',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 10,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                        Text(
                                          '1房 1廳',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Divider(color: Color(0xFF171717),),
                                        Text(
                                          '獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢【東涌小T】海柏名海柏名邸獨立屋獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢【東涌小T】海柏名海柏名邸獨立屋',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 57,
                                                  height: 20,
                                                  decoration: ShapeDecoration(
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Tagging',
                                                    style: TextStyle(
                                                      color: Color(0xFF07A1B4),
                                                      fontSize: 8,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 4,),
                                                Container(
                                                  width: 57,
                                                  height: 20,
                                                  decoration: ShapeDecoration(
                                                    shape: RoundedRectangleBorder(
                                                      side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Tagging',
                                                    style: TextStyle(
                                                      color: Color(0xFF07A1B4),
                                                      fontSize: 8,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  '\$900',
                                                  style: TextStyle(
                                                    color: Color(0xFFE86100),
                                                    fontSize: 14,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0.11,
                                                  ),
                                                ),
                                                Text(
                                                  '萬',
                                                  style: TextStyle(
                                                    color: Color(0xFFE86100),
                                                    fontSize: 10,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w500,
                                                    height: 0.22,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
