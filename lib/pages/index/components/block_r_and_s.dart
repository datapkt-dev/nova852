import 'package:flutter/material.dart';

import '../rental_page.dart';

class BlockRandS extends StatelessWidget {
  final int index;

  const BlockRandS({Key? key, this.index = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 216,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: index == 0
                                  ? AssetImage('assets/images/index_block_buy.png')
                                  : AssetImage('assets/images/index_block_rent.png'),
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
                                  color: index == 0 ? Color(0xFF171717) : Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Noto Sans TC',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPage()));
                        },
                      ),
                    ),
                    SizedBox(height: 4,),
                    GestureDetector(
                      child: Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: index == 0
                                ? AssetImage('assets/images/index_block_buy.png')
                                : AssetImage('assets/images/index_block_rent.png'),
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
                                color: index == 0 ? Color(0xFF171717) : Colors.white,
                                fontSize: 16,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPage()));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(width: 4,),
              Expanded(
                child: Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: index == 0
                                ? AssetImage('assets/images/index_block_buy.png')
                                : AssetImage('assets/images/index_block_rent.png'),
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
                              index == 0
                                  ? 'assets/images/residential.png'
                                  : 'assets/images/index/block_rent_and_buy/rent_residential.png',
                            ),
                            Text(
                              '住宅',
                              style: TextStyle(
                                color: index == 0 ? Color(0xFF171717) : Colors.white,
                                fontSize: 16,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPage()));
                      },
                    ),
                    SizedBox(height: 4,),
                    GestureDetector(
                      child: Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: index == 0
                                ? AssetImage('assets/images/index_block_buy.png')
                                : AssetImage('assets/images/index_block_rent.png'),
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
                              index == 0
                                  ? 'assets/images/mansion.png'
                                  : 'assets/images/index/block_rent_and_buy/rent_mansion.png',
                            ),
                            Text(
                              '豪宅',
                              style: TextStyle(
                                color: index == 0 ? Color(0xFF171717) : Colors.white,
                                fontSize: 16,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPage()));
                      },
                    ),
                    SizedBox(height: 4,),
                    GestureDetector(
                      child: Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: index == 0
                                ? AssetImage('assets/images/index_block_buy.png')
                                : AssetImage('assets/images/index_block_rent.png'),
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
                              index == 0
                                  ? 'assets/images/office.png'
                                  : 'assets/images/index/block_rent_and_buy/rent_office.png',
                            ),
                            Text(
                              '工廈/商廈',
                              style: TextStyle(
                                color: index == 0 ? Color(0xFF171717) : Colors.white,
                                fontSize: 16,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPage()));
                      },
                    ),
                    SizedBox(height: 4,),
                    GestureDetector(
                      child: Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: index == 0
                                ? AssetImage('assets/images/index_block_buy.png')
                                : AssetImage('assets/images/index_block_rent.png'),
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
                                color: index == 0 ? Color(0xFF171717) : Colors.white,
                                fontSize: 16,
                                fontFamily: 'Noto Sans TC',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPage()));
                      },
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
                        '精選新盤 (${index==0 ? '售' : '租'})',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 16,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Nova為你推介最新精選筍盤',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 12,
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
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '600萬內筍盤',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 12,
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
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '新盤同你逐個睇',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 12,
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
    );
  }
}
