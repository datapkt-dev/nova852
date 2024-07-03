import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: Text(
          '6月租務旺季 東涌藍天海岸創區內呎租新高',
          style: TextStyle(
            color: Color(0xFF171717),
            fontSize: 16,
            fontFamily: 'Noto Sans TC',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/index/news_page.png'),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 32,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '6月租務旺季 東涌藍天海岸創區呎租新高',
                          style: TextStyle(
                            color: Color(0xFF171717),
                            fontSize: 18,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16,),
                          child: Divider(),
                        ),
                        Text(
                          '踏入6月份租務旺季，住宅租金重拾升軌，市場連錄多宗高價租金成交個案。其中，東涌藍天海岸一個複式單位以呎租50元租出，創東涌區呎租新高紀錄。\n市場消息透露，東涌藍天海岸1座極高層A室，實用面積1,396平方呎，屬於複式3房間隔，由於樓層高，視野開揚，剛以月租7萬元租出，呎租50元，創區內呎租新高紀錄。區內代理表示，新租客並非機師，該單位剛完成翻新工程，故租金相對較高。據悉，藍天海岸上月共錄13宗租務成交，其他分層單位呎租介乎27.4至38.7元。\n資料顯示，業主早於2003年以約568.8萬元購入單位，以新租金計，持貨21年享約14.8厘的超高租金回報。不過，業主於2021年曾以約1,788萬內部轉讓，若以此價計，市值租金回報約4.7厘。\n鰂魚涌和西營盤亦錄高呎租個案。鰂魚涌THE HOLBORN一個A座高層A8室，實用面積220平方呎，屬於開放式間隔，日前以月租17,500元租出，呎租79.5元，創該廈入伙至今呎租新高紀錄。單位由內地客於今年3月以約582萬元購入，現享約3.6厘租金回報。\n另外，西營盤藝里坊．2號高層K室，實用面積196平方呎，屬於開放式間隔，以全包價1.6萬元租出，呎租高見82元。以業主購入價637.6萬元計，租金回報約3厘。\n超豪宅市場同樣走俏，在政府大力輸入專才效應下，超豪宅市場同樣走俏。據悉，山頂南區豪宅市場，5月共錄51宗租務，涉及每月總金額約為682.55萬元，按月上升7.3%，反映全月租務交投表現靠穩。當中月租逾10萬元的大額成交佔25宗。\n其中淺水灣道38號單號洋房，實用面積4,419平方呎，以月租約70萬元租出，呎租158元，屬區內近月大額租務個案。資料顯示，淺水灣道38號由信置（00083）發展，提供3個單位，實用面積由4,416呎至4,419呎。\n此外，市場消息透露，薄扶林貝沙灣上月共錄36宗租務成交，平均呎租49元。其中貝沙灣2期1座低層A室，實用面積1,921平方呎，屬於3房間隔，並連約84平方呎大平台，剛以全包價10萬元租出，呎租約52元。業主早於2004年以約1,900萬元購入，持貨20年可享約6.3厘租金回報。\n美聯物業一項研究報告指出，10大屋苑5月合共錄355宗租務成交，較4月302宗按月上升約17.5%，並創8個月新高，反映租務表現趨活躍。美聯物業住宅部行政總裁布少明強調，雖然5月份住宅租售比率進一步上升至約59%，較4月約53%，按月增加約6個百分點。但是5月比率較2月未撤辣前約73%，仍顯著低約14個百分點，反映住宅物業市場買賣仍然活躍。',
                          style: TextStyle(
                            color: Color(0xFF171717),
                            fontSize: 18,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 12, right: 12, top: 10),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3FC9C9C9),
                    blurRadius: 4,
                    offset: Offset(0, -4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/icons/saler_female.png'),
                      ),
                      SizedBox(width: 8,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nova 編輯',
                            style: TextStyle(
                              color: Color(0xFF171717),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '23/06/2024 | ',
                                style: TextStyle(
                                  color: Color(0xFFB3B3B3),
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans TC',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '#Tagging',
                                style: TextStyle(
                                  color: Color(0xFF07A1B4),
                                  fontSize: 12,
                                  fontFamily: 'Noto Sans TC',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 32,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.99, -0.16),
                            end: Alignment(-0.99, 0.16),
                            colors: [Color(0xFFFF9900), Color(0xFFFFA563)],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        child: SvgPicture.asset('assets/icons/news/link.svg'),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        width: 44,
                        height: 32,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.99, -0.16),
                            end: Alignment(-0.99, 0.16),
                            colors: [Color(0xFF54B7FF), Color(0xFF52CEDD)],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        child: SvgPicture.asset('assets/icons/news/like.svg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 0,
      //   color: Colors.transparent,
      //   child: Container(
      //       width: double.infinity,
      //       padding: EdgeInsets.only(left: 12, right: 12, top: 10),
      //       decoration: ShapeDecoration(
      //         color: Colors.white,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(12),
      //             topRight: Radius.circular(12),
      //           ),
      //         ),
      //         shadows: [
      //           BoxShadow(
      //             color: Color(0x3FC9C9C9),
      //             blurRadius: 4,
      //             offset: Offset(0, -4),
      //             spreadRadius: 0,
      //           )
      //         ],
      //       ),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Row(
      //             children: [
      //               CircleAvatar(
      //                 radius: 20,
      //                 backgroundImage: AssetImage('assets/icons/saler_female.png'),
      //               ),
      //               SizedBox(width: 8,),
      //               Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text(
      //                     'Nova 編輯',
      //                     style: TextStyle(
      //                       color: Color(0xFF171717),
      //                       fontSize: 16,
      //                       fontFamily: 'Noto Sans TC',
      //                       fontWeight: FontWeight.w500,
      //                     ),
      //                   ),
      //                   Row(
      //                     children: [
      //                       Text(
      //                         '23/06/2024 | ',
      //                         style: TextStyle(
      //                           color: Color(0xFFB3B3B3),
      //                           fontSize: 12,
      //                           fontFamily: 'Noto Sans TC',
      //                           fontWeight: FontWeight.w500,
      //                         ),
      //                       ),
      //                       Text(
      //                         '#Tagging',
      //                         style: TextStyle(
      //                           color: Color(0xFF07A1B4),
      //                           fontSize: 12,
      //                           fontFamily: 'Noto Sans TC',
      //                           fontWeight: FontWeight.w500,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 width: 44,
      //                 height: 32,
      //                 alignment: Alignment.center,
      //                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      //                 clipBehavior: Clip.antiAlias,
      //                 decoration: ShapeDecoration(
      //                   gradient: LinearGradient(
      //                     begin: Alignment(0.99, -0.16),
      //                     end: Alignment(-0.99, 0.16),
      //                     colors: [Color(0xFFFF9900), Color(0xFFFFA563)],
      //                   ),
      //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      //                 ),
      //                 child: SvgPicture.asset('assets/icons/news/link.svg'),
      //               ),
      //               SizedBox(width: 8,),
      //               Container(
      //                 width: 44,
      //                 height: 32,
      //                 alignment: Alignment.center,
      //                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      //                 clipBehavior: Clip.antiAlias,
      //                 decoration: ShapeDecoration(
      //                   gradient: LinearGradient(
      //                     begin: Alignment(0.99, -0.16),
      //                     end: Alignment(-0.99, 0.16),
      //                     colors: [Color(0xFF54B7FF), Color(0xFF52CEDD)],
      //                   ),
      //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      //                 ),
      //                 child: SvgPicture.asset('assets/icons/news/like.svg'),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      // ),
    );
  }
}
