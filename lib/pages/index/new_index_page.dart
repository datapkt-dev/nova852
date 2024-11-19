import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/item_detail.dart';
import 'package:nova852/pages/index/bank_plan.dart';
import 'package:nova852/pages/index/components/block_r_and_s.dart';
import 'package:nova852/pages/index/components/list_item.dart';
import 'package:nova852/pages/index/old_mortgage_page.dart';
import 'package:nova852/pages/index/news.dart';
import 'package:nova852/pages/index/rental_page.dart';
import 'package:nova852/pages/index/transaction_history.dart';
import 'package:nova852/pages/profile/contract_history.dart';
import 'package:nova852/test/maptest.dart';
import 'mortgage_page.dart';
import 'news_content.dart';

class NewIndexPage extends StatefulWidget {
  const NewIndexPage({super.key});

  @override
  State<NewIndexPage> createState() => _NewIndexPageState();
}

class _NewIndexPageState extends State<NewIndexPage> {
  int _UpperBlockIndex = 0;
  int _LowerBlockIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFF2F2F2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
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
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    activeColor: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 13),
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
                                flex: _UpperBlockIndex == 0 ? 12 : 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _UpperBlockIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    height: 33,
                                    decoration: _UpperBlockIndex == 0 ? ShapeDecoration(
                                      color: Color(0xFF171717),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(21.50),
                                      ),
                                    ) : null,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '我想買樓',
                                      style: TextStyle(
                                        color: _UpperBlockIndex == 0 ? Colors.white : Color(0xFFB3B3B3),
                                        fontSize: 14,
                                        fontFamily: 'Noto Sans TC',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: _UpperBlockIndex == 1 ? 12 : 10,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _UpperBlockIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    decoration: _UpperBlockIndex == 1 ? ShapeDecoration(
                                      color: Color(0xFF171717),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(21.50),
                                      ),
                                    ) : null,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '我想租樓',
                                      style: TextStyle(
                                        color: _UpperBlockIndex == 1 ? Colors.white : Color(0xFFB3B3B3),
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
                        SizedBox(height: 8,),
                        BlockRandS(index: _UpperBlockIndex,),
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '相關工具',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 16,
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionHistory()));
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    // backgroundImage: AssetImage('assets/images/tools/tools_a.jpeg'),
                                    backgroundColor: Color(0xFFFF763C),
                                    child: SvgPicture.asset('assets/icons/tools/deal.svg'),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    '成交紀錄',
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MortgagePage()));
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    // backgroundImage: AssetImage('assets/images/tools/tools_a.jpeg'),
                                    backgroundColor: Color(0xFF58A9E1),
                                    child: SvgPicture.asset('assets/icons/tools/plan.svg'),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    '按揭計劃',
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BankPlan()));
                              },
                              child: Column(
                                children: [
                                  // Container(
                                  //   width: 50,
                                  //   height: 50,
                                  //   padding: EdgeInsets.all(10),
                                  //   decoration: BoxDecoration(
                                  //     shape: BoxShape.circle,
                                  //     image: DecorationImage(
                                  //       image: AssetImage('assets/images/tools/tools_a.jpeg'),
                                  //       fit: BoxFit.fill,
                                  //       alignment: Alignment(
                                  //         // 調整這些值來改變圖像的對齊位置
                                  //         1, // 水平對齊 -1.0: 左, 0.0: 中, 1.0: 右
                                  //         1, // 垂直對齊 -1.0: 上, 0.0: 中, 1.0: 下
                                  //       ),
                                  //     ),
                                  //   ),
                                  //   child: SvgPicture.asset('assets/icons/tools/bank.svg',),
                                  // ),
                                  CircleAvatar(
                                    radius: 25,
                                    // backgroundImage: AssetImage('assets/images/tools/tools_a.jpeg'),
                                    backgroundColor: Color(0xFFFFC700),
                                    child: SvgPicture.asset('assets/icons/tools/bank.svg',),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    '銀行計劃',
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ContractHistory()));
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    // backgroundImage: AssetImage('assets/images/tools/tools_d.jpeg'),
                                    backgroundColor: Color(0XFF249607),
                                    child: SvgPicture.asset('assets/icons/tools/contract.svg'),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    '電子租約',
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '樓市新聞',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 16,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
                        },
                        child: Text(
                          '更多',
                          style: TextStyle(
                            color: Color(0xFF07A1B4),
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) {
                        return GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Container(
                              width: 286,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 286,
                                    height: 181,
                                    decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage('assets/images/index/news.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 12, right: 12, bottom: 14, top: 3),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          children: [
                                            Text(
                                              '#Tagging',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Text(
                                              '03/06/2024',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Nova編輯',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '9000萬賣旺角老字號茶記鋪位 過億入手 勁蝕1500萬離場 ${index+1}',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
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
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const NewsContent()));
                          },
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '精選樓盤',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 16,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MapTest()));
                        },
                        child: Text(
                          '更多',
                          style: TextStyle(
                            color: Color(0xFF07A1B4),
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) {
                        return GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: Container(
                              width: 286,
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
                                                fontSize: 14,
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
                                          '將軍澳 東港城 1座 高層 C室 ${index+1}',
                                          style: const TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 18,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              '實用 463呎',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Text(
                                              '@ \$10,234',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          '1房 1廳',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Divider(),
                                        Text(
                                          '獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢涌小T】海柏名【東；獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢涌小T】海柏名【東；',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Color(0xFFB3B3B3),
                                            fontSize: 14,
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
                                                      fontSize: 12,
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
                                                      fontSize: 12,
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
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    '\$900',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    '萬',
                                                    style: TextStyle(
                                                      color: Colors.white,
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemDetail()));
                          },
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  const Text(
                    '最新放盤',
                    style: TextStyle(
                      color: Color(0xFF171717),
                      fontSize: 16,
                      fontFamily: 'Noto Sans TC',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Container(
                          width: double.infinity,
                          height: 33,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 0.50, color: Color(0xFF171717),),
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
                                    height: 33,
                                    decoration: _LowerBlockIndex == 0 ? ShapeDecoration(
                                      color: const Color(0xFF171717),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(21.50),
                                      ),
                                    ) : null,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '我想買樓',
                                      style: TextStyle(
                                        color: _LowerBlockIndex == 0 ? Colors.white : const Color(0xFFB3B3B3),
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
                                      color: const Color(0xFF171717),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(21.50),
                                      ),
                                    ) : null,
                                    child: Text(
                                      '我想租樓',
                                      style: TextStyle(
                                        color: _LowerBlockIndex == 1 ? Colors.white : Color(0xFFB3B3B3),
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
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: List.generate(4, (index) {
                          return GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 5,),
                              child: ListItem(),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetail()));
                            },
                          );
                        }),
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RentalPage()));
                    },
                    child: Center(
                      child: Container(
                        width: 116,
                        height: 24,
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
                        child: Text(
                          '更多樓盤',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
