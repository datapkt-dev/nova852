import 'package:flutter/material.dart';

import '../rental_page.dart';

class BlockRandS extends StatelessWidget {
  final int index;

  const BlockRandS({Key? key, this.index = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                          image: index == 0 ? AssetImage('assets/images/index_block_buy.png') : AssetImage('assets/images/index_block_rent.png'),
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
                        image: AssetImage('assets/images/index_block_buy.png'),
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
                        image: AssetImage('assets/images/index_block_buy.png'),
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
                        image: AssetImage('assets/images/index_block_buy.png'),
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
                        image: AssetImage('assets/images/index_block_buy.png'),
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
                        image: AssetImage('assets/images/index_block_buy.png'),
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
    );
  }
}
