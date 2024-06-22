import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/pages/index/components/list_item.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class ItemDetail extends StatefulWidget {
  ItemDetail({super.key});

  final List<String> tab = ['基礎信息', '屋內設備', '特色描述', '周邊配套',];

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  // late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight= MediaQuery.of(context).size.height;
    // double hScale = screenHeight/852;
    // double wScale = screenWidth/393;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          '將軍澳 東港城 1座 高層 C室',
          style: TextStyle(
            color: Color(0xFF171717),
            fontSize: 18,
            fontFamily: 'Noto Sans TC',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/item_detail/bookmark.svg'),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset('assets/icons/item_detail/share.svg'),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFFF5F6F7),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 308,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                showDialogFunc(context, 'assets/images/item_img.jpeg');
                              },
                              child: Image.asset(
                                'assets/images/item_img.jpeg',
                                fit: BoxFit.fill,
                              ),
                            );
                            // return Image.asset(
                            //   'assets/images/item_img.jpeg',
                            //   fit: BoxFit.fill,
                            // );
                          },
                          itemCount: 3,
                        ),
                      ), //照片
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14,),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '將軍澳 東港城 1座 高層 C室',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 18,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/icons/item_detail/location.svg'),
                                        SizedBox(width: 3,),
                                        Text(
                                          '將軍澳 坑口 重華路 8號',
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
                                  SizedBox(height: 8,),
                                  const Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '租金',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '\$14,000 ',
                                            style: TextStyle(
                                              color: Color(0xFFE86100),
                                              fontSize: 16,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '實用',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                '506',
                                                style: TextStyle(
                                                  color: Color(0xFF171717),
                                                  fontSize: 16,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '呎',
                                                style: TextStyle(
                                                  color: Color(0xFF171717),
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '建築',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                '720',
                                                style: TextStyle(
                                                  color: Color(0xFF171717),
                                                  fontSize: 16,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '呎',
                                                style: TextStyle(
                                                  color: Color(0xFF171717),
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '間隔',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '2房1廳',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 16,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Divider(),
                                  ),
                                  Text(
                                    '送首期送印花稅，送埋36個月租金，3.5米樓底，送閣樓送傢俬。送首期送印花稅，送埋36個月租金，3.5米樓底，送閣樓送傢俬。',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 12,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '用途',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '住宅-屋苑',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(height: 12,),
                                            Text(
                                              '坐向',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '南',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Flexible(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '按金',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '2個',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(height: 12,),
                                            Text(
                                              '樓齡',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '14年',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Flexible(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '裝修',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '精緻裝修',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(height: 12,),
                                            Text(
                                              '刊登時間',
                                              style: TextStyle(
                                                color: Color(0xFFB3B3B3),
                                                fontSize: 12,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              '29/4/2024',
                                              style: TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 14,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      Text(
                                        '房源編號：R102390',
                                        style: TextStyle(
                                          color: Color(0xFFB3B3B3),
                                          fontSize: 12,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        '物業編號：E75687781',
                                        style: TextStyle(
                                          color: Color(0xFFB3B3B3),
                                          fontSize: 12,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '屋內設施',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: SvgPicture.asset(
                                              color: Color(0xFF07A1B4),
                                              'assets/icons/furniture_new/1_tv.svg',
                                            ),
                                          ),
                                          Text(
                                            '電視',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: SvgPicture.asset(
                                              color: Color(0xFF07A1B4),
                                              'assets/icons/furniture_new/4_washer.svg',
                                            ),
                                          ),
                                          Text(
                                            '洗衣機',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: SvgPicture.asset(
                                              color: Color(0xFF07A1B4),
                                              'assets/icons/furniture_new/3_aricon.svg',
                                            ),
                                          ),
                                          Text(
                                            '冷氣',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: SvgPicture.asset(
                                              color: Color(0xFF07A1B4),
                                              'assets/icons/furniture_new/2_microwave.svg',
                                            ),
                                          ),
                                          Text(
                                            '微波爐',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: SvgPicture.asset(
                                              color: Color(0xFF07A1B4),
                                              'assets/icons/furniture_new/6_refrig.svg',
                                            ),
                                          ),
                                          Text(
                                            '雪櫃',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30,),
                                  Text(
                                    '特色描述',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Wrap(
                                    spacing: 16,
                                    runSpacing: 8,
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
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
                                            fontSize: 10,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30,),
                                  Text(
                                    '樓盤詳情',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    '送首期送印花稅，送埋36個月租金，3.5米樓底，送閣樓送傢俬。送首期送印花稅，送埋36個月租金，3.5米樓底，送閣樓送傢俬。送首期送印花稅，送埋36個月租金，3.5米樓底，送閣樓送傢俬。送首期送印花稅，送埋36個月租金，3.5米樓底，送閣樓送傢俬。',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 12,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '鄰近設施',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Container(
                                    width: double.infinity,
                                    height: 212,
                                    // child: GoogleMap(
                                    //   initialCameraPosition: CameraPosition(
                                    //     target: LatLng(-33.86, 151.20),
                                    //     zoom: 15,
                                    //   ),
                                    //   markers: {
                                    //     const Marker(
                                    //       markerId: MarkerId('Sydney'),
                                    //       position: LatLng(-33.86, 151.20),
                                    //     )
                                    //   },
                                    // ),
                                  ),
                                  SizedBox(height: 24,),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Color(0xFF07A1B4),
                                                  width: 2,
                                                )
                                            ),
                                          ),
                                          child: Text(
                                            '交通',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Color(0xFFE3E3E3),
                                                  width: 2,
                                                )
                                            ),
                                          ),
                                          child: Text(
                                            '超市',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Color(0xFFE3E3E3),
                                                  width: 2,
                                                )
                                            ),
                                          ),
                                          child: Text(
                                            '餐飲',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Color(0xFFE3E3E3),
                                                  width: 2,
                                                )
                                            ),
                                          ),
                                          child: Text(
                                            '銀行',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Color(0xFFE3E3E3),
                                                  width: 2,
                                                )
                                            ),
                                          ),
                                          child: Text(
                                            '學校',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: Color(0xFFE3E3E3),
                                                  width: 2,
                                                )
                                            ),
                                          ),
                                          child: Text(
                                            '醫院',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'xxx巴士站',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          '42m',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'xxx巴士站',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          '42m',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'xxx巴士站',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          '42m',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'xxx巴士站',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          '42m',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'xxx巴士站',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          '42m',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '聯絡代理',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
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
                                                'Jay Chou',
                                                style: TextStyle(
                                                  color: Color(0xFF171717),
                                                  fontSize: 16,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                'C-123456',
                                                style: TextStyle(
                                                  color: Color(0xFFB3B3B3),
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                                                colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                              ),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                            ),
                                            child: SvgPicture.asset('assets/icons/item_detail/phone.svg'),
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
                                                colors: [Color(0xFF07B42D), Color(0xFF9BD777)],
                                              ),
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                            ),
                                            child: SvgPicture.asset('assets/icons/item_detail/whatsapp.svg'),
                                          ),
                                        ],
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
                                            '公司名稱',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '中原地產',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 14,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '公司牌照',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'C-000227',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 14,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '公司地址',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '長沙灣 醫局街233號',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 14,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Center(
                                    child: Container(
                                      width: 140,
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
                                        '更多代理放盤',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '相關樓盤',
                                    style: TextStyle(
                                      color: Color(0xFF171717),
                                      fontSize: 14,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
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
                                        child: ListItem(),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ),
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
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
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
                        'Jay Chou',
                        style: TextStyle(
                          color: Color(0xFF171717),
                          fontSize: 16,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'C-123456',
                        style: TextStyle(
                          color: Color(0xFFB3B3B3),
                          fontSize: 12,
                          fontFamily: 'Noto Sans TC',
                          fontWeight: FontWeight.w500,
                        ),
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
                        colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: SvgPicture.asset('assets/icons/item_detail/phone.svg'),
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
                        colors: [Color(0xFF07B42D), Color(0xFF9BD777)],
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: SvgPicture.asset('assets/icons/item_detail/whatsapp.svg'),
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

showDialogFunc(context, img) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(15),
          child: Image.asset(img,),
        ),
      );
    },
  );
}