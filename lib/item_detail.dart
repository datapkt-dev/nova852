import 'dart:convert';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/pages/index/components/list_item.dart';
import 'package:http/http.dart' as http;
import 'config/app_config.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class ItemDetail extends StatefulWidget {
  final String itemId, itemTitle;
  // final Map<String, dynamic>? itemData;
  const ItemDetail({super.key, required this.itemId, required this.itemTitle});

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  // late GoogleMapController mapController;
  final String _baseUrl = AppConfig.baseURL;

  final List<String> tab = ['基本資料', '單位詳情', '鄰近設施',];
  final List<String> mapItem = ['交通', '超市', '餐飲', '銀行', '學校', '醫院',];
  final ScrollController _scrollController = ScrollController();

  int _selectedIndex = 0;
  int _selectedItem = 0;
  int _selectedHistory = 0;
  late Map<String, dynamic> itemData;
  late Future<Map<String, dynamic>> _futureData;

  Map<String, List<dynamic>> furniture = {
    'ac' : ['冷氣機', 'assets/icons/furniture/aircon.svg', true],
    'dw' : ['洗碗碟機', 'assets/icons/furniture/dishwasher.svg', false],
    'fr' : ['雪櫃', 'assets/icons/furniture/refrigerator.svg', true],
    'hx' : ['抽油煙機', 'assets/icons/furniture/rangeHood.svg', true],
    'ih' : ['電磁爐', 'assets/icons/furniture/inductionCooker.svg', true],
    'mw' : ['微波爐', 'assets/icons/furniture/microwave.svg', false],
    'ov' : ['焗爐', 'assets/icons/furniture/oven.svg', false],
    'sc' : ['蒸焗爐', 'assets/icons/furniture/steamOven.svg', true],
    'td' : ['乾衣機', 'assets/icons/furniture/clothesDryer.svg', true],
    'tv' : ['電視', 'assets/icons/furniture/tv.svg', true],
    'wh' : ['熱水爐', 'assets/icons/furniture/heater.svg', false],
    'wm' : ['洗衣機', 'assets/icons/furniture/washer.svg', true],
  };

  @override
  void initState() {
    super.initState();
    _futureData = fetchProperties(widget.itemId);
    _scrollController.addListener(() {
      double offset = _scrollController.offset;

      setState(() {
        if (offset >= 0 && offset < 700) {
          _selectedIndex = 0;
        } else if (offset >= 700 && offset < 1260) {
          _selectedIndex = 1;
        } else if (offset >= 1260) {
          _selectedIndex = 2;
        }
      });
    });
  }

  Future<Map<String, dynamic>> fetchProperties(String? id) async {
    final response = await http.get(Uri.parse('${AppConfig.baseURL}/properties/$id'));
    if (response.statusCode == 200) {
      print(200);
      itemData = json.decode(response.body);
      Map<String, dynamic> amenities = itemData['ad_parameters']['amenities'];
      print(amenities);
      furniture.forEach((key, value) {
        furniture[key]![2] = amenities[key]!;
      });
      print(furniture);
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load properties');
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
            padding: const EdgeInsets.all(15),
            child: itemData != null
                ? Image.network(itemData?['ad_parameters']['thumbnail_url'])
                : Image.asset(img,),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
        title: Text(
          widget.itemTitle,
          style: const TextStyle(
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
      body: FutureBuilder(
        future: _futureData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            itemData = snapshot.data!;
            return SafeArea(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color(0xFFF5F6F7),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40,
                      color: Colors.white,
                      child: Row(
                        children: List.generate(tab.length, (index) {
                          return Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: _selectedIndex == index
                                  ? const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFF171717),
                                    width: 3,
                                  ),
                                ),
                              )
                                  : const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.transparent,
                                    width: 3,
                                  ),
                                ),
                              ),
                              child: GestureDetector(
                                child: Text(tab[index]),
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                  if(index==0) {
                                    _scrollController.jumpTo(0);
                                  }
                                  if(index==1) {
                                    _scrollController.jumpTo(700);
                                  }
                                  if(index==2) {
                                    _scrollController.jumpTo(1260);
                                  }
                                },
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 308,
                              color: Colors.white,
                              child: Swiper(
                                itemCount: itemData['imageUrl'].length,
                                itemBuilder: (BuildContext context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // showDialogFunc(context, 'assets/images/item_img.jpeg');
                                    },
                                    child: Image.network(itemData['imageUrl'][index]),
                                  );
                                },
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14,),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              itemData['ad_parameters']['title'],
                                              style: const TextStyle(
                                                color: Color(0xFF171717),
                                                fontSize: 18,
                                                fontFamily: 'Noto Sans TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                showDialogFunc(context, 'assets/images/item_detail/layout2.png');
                                              },
                                              child: Container(
                                                width: 82,
                                                height: 24,
                                                alignment: Alignment.center,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: ShapeDecoration(
                                                  gradient: const LinearGradient(
                                                    begin: Alignment(0.99, -0.16),
                                                    end: Alignment(-0.99, 0.16),
                                                    colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                                  ),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(
                                                      width: 16,
                                                      height: 16,
                                                      'assets/icons/item_detail/layout.svg',),
                                                    const Text(
                                                      '平面圖',
                                                      style: TextStyle(
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 14,
                                                        fontFamily: 'Noto Sans TC',
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 5),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset('assets/icons/item_detail/location.svg'),
                                              const SizedBox(width: 3,),
                                              Text(
                                                itemData['address'],
                                                style: const TextStyle(
                                                  color: Color(0xFFB3B3B3),
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 8,),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  '租金',
                                                  style: TextStyle(
                                                    color: Color(0xFFB3B3B3),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  '\$${itemData['defaultRent']}',
                                                  style: const TextStyle(
                                                    color: Color(0xFFE86100),
                                                    fontSize: 16,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(width: 20,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Text(
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
                                                      '${itemData['ad_parameters']['usable_area']}',
                                                      style: const TextStyle(
                                                        color: Color(0xFF171717),
                                                        fontSize: 16,
                                                        fontFamily: 'Noto Sans TC',
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      itemData['ad_parameters']['unit'],
                                                      style: const TextStyle(
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
                                            const SizedBox(width: 20,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Text(
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
                                                      '${itemData['ad_parameters']['gfa']}',
                                                      style: const TextStyle(
                                                        color: Color(0xFF171717),
                                                        fontSize: 16,
                                                        fontFamily: 'Noto Sans TC',
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      itemData['ad_parameters']['unit'],
                                                      style: const TextStyle(
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
                                            const SizedBox(width: 20,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  '間隔',
                                                  style: TextStyle(
                                                    color: Color(0xFFB3B3B3),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  itemData['layout'],
                                                  style: const TextStyle(
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
                                        const Padding(
                                          padding: EdgeInsets.symmetric(vertical: 10),
                                          child: Divider(),
                                        ),
                                        Text(
                                          itemData['ad_parameters']['description'],
                                          style: const TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(height: 20,),
                                        Row(
                                          children: [
                                            const Flexible(
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
                                            const SizedBox(width: 20,),
                                            Flexible(
                                              flex: 1,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    '按金',
                                                    style: TextStyle(
                                                      color: Color(0xFFB3B3B3),
                                                      fontSize: 12,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                  const Text(
                                                    '2個',
                                                    style: TextStyle(
                                                      color: Color(0xFF171717),
                                                      fontSize: 14,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12,),
                                                  const Text(
                                                    '樓齡',
                                                    style: TextStyle(
                                                      color: Color(0xFFB3B3B3),
                                                      fontSize: 12,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                  Text(
                                                    '${itemData['ad_parameters']['age']}年',
                                                    style: const TextStyle(
                                                      color: Color(0xFF171717),
                                                      fontSize: 14,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 20,),
                                            Flexible(
                                              flex: 1,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    '裝修',
                                                    style: TextStyle(
                                                      color: Color(0xFFB3B3B3),
                                                      fontSize: 12,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                  Text(
                                                    itemData['ad_parameters']['renovation'],
                                                    style: const TextStyle(
                                                      color: Color(0xFF171717),
                                                      fontSize: 14,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12,),
                                                  const Text(
                                                    '刊登時間',
                                                    style: TextStyle(
                                                      color: Color(0xFFB3B3B3),
                                                      fontSize: 12,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                  Text(
                                                    itemData['ad_parameters']['posting_time'],
                                                    style: const TextStyle(
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
                                        const SizedBox(height: 20,),
                                        const Row(
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
                                  const SizedBox(height: 20,),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '屋內設施',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 4,),
                                        Wrap(
                                          spacing: 46,
                                          runSpacing: 10,
                                          children: List.generate(furniture.length, (index) {
                                            final key = furniture.keys.elementAt(index);
                                            final value = furniture[key];
                                            return SizedBox(
                                              width: 50,
                                              height: 60,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 30,
                                                    height: 30,
                                                    child: SvgPicture.asset(
                                                      color: value?[2] ? const Color(0xFF07A1B4) : const Color(0xFFB3B3B3),
                                                      value?[1],
                                                    ),
                                                  ),
                                                  Text(
                                                    value?[0],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: value?[2] ? const Color(0xFF171717) : const Color(0xFFB3B3B3),
                                                      fontSize: 12,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                        ),
                                        const SizedBox(height: 30,),
                                        const Text(
                                          '特色描述',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 4,),
                                        Wrap(
                                          spacing: 16,
                                          runSpacing: 8,
                                          children: List.generate(itemData['ad_parameters']['label'].length, (index) {
                                            return Container(
                                              width: 57,
                                              height: 20,
                                              alignment: Alignment.center,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                              ),
                                              child: Text(
                                                itemData['ad_parameters']['label'][index],
                                                style: const TextStyle(
                                                  color: Color(0xFF07A1B4),
                                                  fontSize: 10,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            );
                                          }),
                                        ),
                                        const SizedBox(height: 30,),
                                        const Text(
                                          '樓盤詳情',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 4,),
                                        Text(
                                          itemData['ad_parameters']['description'],
                                          style: const TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
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
                                        SizedBox(
                                          width: double.infinity,
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
                                          children: List.generate(mapItem.length, (index) {
                                            return Expanded(
                                              flex: 1,
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _selectedItem = index;
                                                  });
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                      bottom: BorderSide(
                                                        color: _selectedItem == index ? Color(0xFF07A1B4) : Color(0xFFE3E3E3),
                                                        width: 2,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    mapItem[index],
                                                    style: TextStyle(
                                                      color: Color(0xFF171717),
                                                      fontSize: 12,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                          // children: [
                                          //   Expanded(
                                          //     flex: 1,
                                          //     child: Container(
                                          //       alignment: Alignment.center,
                                          //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          //       decoration: BoxDecoration(
                                          //         border: Border(
                                          //           bottom: BorderSide(
                                          //             color: Color(0xFF07A1B4),
                                          //             width: 2,
                                          //           ),
                                          //         ),
                                          //       ),
                                          //       child: Text(
                                          //         '交通',
                                          //         style: TextStyle(
                                          //           color: Color(0xFF171717),
                                          //           fontSize: 12,
                                          //           fontFamily: 'Noto Sans TC',
                                          //           fontWeight: FontWeight.w500,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          //   Expanded(
                                          //     flex: 1,
                                          //     child: Container(
                                          //       alignment: Alignment.center,
                                          //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          //       decoration: BoxDecoration(
                                          //         border: Border(
                                          //             bottom: BorderSide(
                                          //               color: Color(0xFFE3E3E3),
                                          //               width: 2,
                                          //             )
                                          //         ),
                                          //       ),
                                          //       child: Text(
                                          //         '超市',
                                          //         style: TextStyle(
                                          //           color: Color(0xFF171717),
                                          //           fontSize: 12,
                                          //           fontFamily: 'Noto Sans TC',
                                          //           fontWeight: FontWeight.w500,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          //   Expanded(
                                          //     flex: 1,
                                          //     child: Container(
                                          //       alignment: Alignment.center,
                                          //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          //       decoration: BoxDecoration(
                                          //         border: Border(
                                          //           bottom: BorderSide(
                                          //             color: Color(0xFFE3E3E3),
                                          //             width: 2,
                                          //           ),
                                          //         ),
                                          //       ),
                                          //       child: Text(
                                          //         '餐飲',
                                          //         style: TextStyle(
                                          //           color: Color(0xFF171717),
                                          //           fontSize: 12,
                                          //           fontFamily: 'Noto Sans TC',
                                          //           fontWeight: FontWeight.w500,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          //   Expanded(
                                          //     flex: 1,
                                          //     child: Container(
                                          //       alignment: Alignment.center,
                                          //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          //       decoration: BoxDecoration(
                                          //         border: Border(
                                          //             bottom: BorderSide(
                                          //               color: Color(0xFFE3E3E3),
                                          //               width: 2,
                                          //             )
                                          //         ),
                                          //       ),
                                          //       child: Text(
                                          //         '銀行',
                                          //         style: TextStyle(
                                          //           color: Color(0xFF171717),
                                          //           fontSize: 12,
                                          //           fontFamily: 'Noto Sans TC',
                                          //           fontWeight: FontWeight.w500,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          //   Expanded(
                                          //     flex: 1,
                                          //     child: Container(
                                          //       alignment: Alignment.center,
                                          //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          //       decoration: BoxDecoration(
                                          //         border: Border(
                                          //             bottom: BorderSide(
                                          //               color: Color(0xFFE3E3E3),
                                          //               width: 2,
                                          //             )
                                          //         ),
                                          //       ),
                                          //       child: Text(
                                          //         '學校',
                                          //         style: TextStyle(
                                          //           color: Color(0xFF171717),
                                          //           fontSize: 12,
                                          //           fontFamily: 'Noto Sans TC',
                                          //           fontWeight: FontWeight.w500,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          //   Expanded(
                                          //     flex: 1,
                                          //     child: Container(
                                          //       alignment: Alignment.center,
                                          //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          //       decoration: BoxDecoration(
                                          //         border: Border(
                                          //             bottom: BorderSide(
                                          //               color: Color(0xFFE3E3E3),
                                          //               width: 2,
                                          //             )
                                          //         ),
                                          //       ),
                                          //       child: Text(
                                          //         '醫院',
                                          //         style: TextStyle(
                                          //           color: Color(0xFF171717),
                                          //           fontSize: 12,
                                          //           fontFamily: 'Noto Sans TC',
                                          //           fontWeight: FontWeight.w500,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //   ),
                                          // ],
                                        ),
                                        const SizedBox(height: 15,),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: const Row(
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
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: const Row(
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
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: const Row(
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
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: const Row(
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
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: const Row(
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
                                  const SizedBox(height: 20,),
                                  Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                                                      flex: _selectedHistory == 0 ? 12 : 10,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _selectedHistory = 0;
                                                          });
                                                        },
                                                        child: Container(
                                                          decoration: _selectedHistory == 0 ? ShapeDecoration(
                                                            color: const Color(0xFF07A1B4),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(21.50),
                                                            ),
                                                          ) : null,
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            '售',
                                                            style: TextStyle(
                                                              color: _selectedHistory == 0 ? Colors.white : Color(0xFF07A1B4),
                                                              fontSize: 14,
                                                              fontFamily: 'Noto Sans TC',
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: _selectedHistory == 1 ? 12 : 10,
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            _selectedHistory = 1;
                                                          });
                                                        },
                                                        child: Container(
                                                          alignment: Alignment.center,
                                                          decoration: _selectedHistory == 1 ? ShapeDecoration(
                                                            color: const Color(0xFF07A1B4),
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(21.50),
                                                            ),
                                                          ) : null,
                                                          child: Text(
                                                            '租',
                                                            style: TextStyle(
                                                              color: _selectedHistory == 1 ? Colors.white : Color(0xFF07A1B4),
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
                                                          padding: const EdgeInsets.all(4),
                                                          decoration: ShapeDecoration(
                                                            color: const Color(0xFF07A1B4),
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                                          ),
                                                          child: const Text(
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
                                              gradient: const LinearGradient(
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
                                  const SizedBox(height: 20,),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '聯絡代理',
                                          style: TextStyle(
                                            color: Color(0xFF171717),
                                            fontSize: 14,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                  radius: 20,
                                                  backgroundImage: NetworkImage(itemData['ad_parameters']['agent']['ag_url']),
                                                ),
                                                const SizedBox(width: 8,),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      itemData['ad_parameters']['agent']['ag_name'],
                                                      style: const TextStyle(
                                                        color: Color(0xFF171717),
                                                        fontSize: 16,
                                                        fontFamily: 'Noto Sans TC',
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      itemData['ad_parameters']['agent']['license'],
                                                      style: const TextStyle(
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
                                                    gradient: const LinearGradient(
                                                      begin: Alignment(0.99, -0.16),
                                                      end: Alignment(-0.99, 0.16),
                                                      colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                                    ),
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                                  ),
                                                  child: SvgPicture.asset('assets/icons/item_detail/phone.svg'),
                                                ),
                                                const SizedBox(width: 8,),
                                                Container(
                                                  width: 44,
                                                  height: 32,
                                                  alignment: Alignment.center,
                                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: ShapeDecoration(
                                                    gradient: const LinearGradient(
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
                                        const SizedBox(height: 20,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  '公司名稱',
                                                  style: TextStyle(
                                                    color: Color(0xFFB3B3B3),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  itemData['ad_parameters']['agent']['agency'],
                                                  style: const TextStyle(
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
                                                const Text(
                                                  '公司牌照',
                                                  style: TextStyle(
                                                    color: Color(0xFFB3B3B3),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  itemData['ad_parameters']['agent']['phone'],
                                                  style: const TextStyle(
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
                                                const Text(
                                                  '公司地址',
                                                  style: TextStyle(
                                                    color: Color(0xFFB3B3B3),
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  itemData['ad_parameters']['agent']['address'],
                                                  style: const TextStyle(
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
                                        const SizedBox(height: 20,),
                                        Center(
                                          child: Container(
                                            width: 164,
                                            height: 30,
                                            alignment: Alignment.center,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              gradient: const LinearGradient(
                                                begin: Alignment(0.99, -0.16),
                                                end: Alignment(-0.99, 0.16),
                                                colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                            ),
                                            child: const Text(
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
                                  const SizedBox(height: 20,),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 25,),
                                          child: Text(
                                            '相關樓盤',
                                            style: TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 14,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: List.generate(4, (index) {
                                            return const Padding(
                                              padding: EdgeInsets.symmetric(vertical: 5,),
                                              child: ListItem(),
                                            );
                                          }),
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
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                        decoration: const ShapeDecoration(
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
                                  backgroundImage: NetworkImage(itemData['ad_parameters']['agent']['ag_url']),
                                ),
                                const SizedBox(width: 8,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      itemData['ad_parameters']['agent']['ag_name'],
                                      style: const TextStyle(
                                        color: Color(0xFF171717),
                                        fontSize: 16,
                                        fontFamily: 'Noto Sans TC',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      itemData['ad_parameters']['agent']['license'],
                                      style: const TextStyle(
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
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.99, -0.16),
                                      end: Alignment(-0.99, 0.16),
                                      colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                  ),
                                  child: SvgPicture.asset('assets/icons/item_detail/phone.svg'),
                                ),
                                const SizedBox(width: 8,),
                                Container(
                                  width: 44,
                                  height: 32,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
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
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            // snapshot.data 為 null 的情況
            return const Center(
              child: Text('No data available'),
            );
          }
        },
      ),
    );
  }
}