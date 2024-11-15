import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/item_detail.dart';
import 'package:nova852/lab/components/price.dart';
import 'package:nova852/pages/index/components/area.dart';
import 'package:nova852/pages/index/components/function.dart';
import 'package:nova852/pages/index/components/list_item.dart';
import 'package:nova852/pages/index/components/more.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../config/app_config.dart';

class RentalPage extends StatefulWidget {
  RentalPage({super.key});

  final List<String> tab = ['用途', '地區', '價錢', /*'面積', */'其他', '排序'];
  final List<String> tab2 = ['Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging'];
  final filterWidget = [const FunctionWidget2(), AreaWidget2(), const PriceWidget(), /*Container(), */const MoreWidget(), Container()];

  @override
  State<RentalPage> createState() => _RentalPageState();
}

class _RentalPageState extends State<RentalPage> {
  final String _baseUrl = AppConfig.baseURL;

  int _selectedIndex = 0;
  bool _showContainer = false;
  final List<int> items = List<int>.generate(100, (i) => i + 1);
  bool _isOverlayVisible = false;
  List<Map<String, dynamic>> propertylist = [];

  @override
  void initState() {
    super.initState();
    fetchProperties();
  }

  Future<void> fetchProperties() async {
    final response = await http.get(Uri.parse('$_baseUrl/properties'));
    // print(response.body);
    if (response.statusCode == 200) {
      List<dynamic> properties = json.decode(response.body);
      // print(properties);
      propertylist = properties.map((item) => item as Map<String, dynamic>).toList();
      print(propertylist);

      // print('object');
      // print(propertylist[0]);
      setState(() {
        // propertylist = properties;
      });
    } else {
      throw Exception('Failed to load properties');
    }
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    // double wScale = screenWidth/393;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
          scrolledUnderElevation: 0,
          title: const Text('租屋'),
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
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 35,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                            alignment: Alignment.center,
                            child: Row(
                              children: List.generate(widget.tab2.length, (index) {
                                return Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _selectedIndex = index;
                                        });
                                      },
                                      child: Container(
                                        height: 20,
                                        decoration: ShapeDecoration(
                                          gradient: _selectedIndex == index ? const LinearGradient(
                                            begin: Alignment(0.99, -0.16),
                                            end: Alignment(-0.99, 0.16),
                                            colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                          ) : null,
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF07A1B4),
                                            ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(horizontal: 19),
                                        child: Text(
                                          widget.tab2[index],
                                          style: TextStyle(
                                            color: _selectedIndex == index ? Colors.white : const Color(0xFF07A1B4),
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 4,),
                                  ],
                                );
                              }),
                            ),
                          ),
                        ),
                        Column(
                          children: List.generate(propertylist.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6,),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ItemDetail()));
                                },
                                // child: ListItem(),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 120,
                                        height: 164,
                                        child: Image.network(propertylist[index]['imageUrl']),
                                        // decoration: ShapeDecoration(
                                        //   image: DecorationImage(
                                        //     image: AssetImage('assets/images/featured_item.png'),
                                        //     fit: BoxFit.fill,
                                        //   ),
                                        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                        // ),
                                      ),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                          child: SizedBox(
                                            height: 164,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  propertylist[index]['propertyName'],
                                                  style: const TextStyle(
                                                    color: Color(0xFF171717),
                                                    fontSize: 16,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '實用 463呎',
                                                      style: TextStyle(
                                                        color: Color(0xFF6D6D6D),
                                                        fontSize: 14,
                                                        fontFamily: 'Noto Sans TC',
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8,),
                                                    Text(
                                                      '@\$10,234',
                                                      style: TextStyle(
                                                        color: Color(0xFF6D6D6D),
                                                        fontSize: 14,
                                                        fontFamily: 'Noto Sans TC',
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  '${propertylist[index]['propertyType']} ${propertylist[index]['label']}',
                                                  style: const TextStyle(
                                                    color: Color(0xFF6D6D6D),
                                                    fontSize: 14,
                                                    fontFamily: 'Noto Sans TC',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const Divider(color: Color(0xFF6D6D6D),),
                                                const Text(
                                                  '獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢【東涌小T】海柏名海柏名邸獨立屋獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢【東涌小T】海柏名海柏名邸獨立屋',
                                                  style: TextStyle(
                                                    color: Color(0xFF171717),
                                                    fontSize: 14,
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
                                                          width: 62,
                                                          height: 22,
                                                          decoration: ShapeDecoration(
                                                            shape: RoundedRectangleBorder(
                                                              side: const BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                          ),
                                                          alignment: Alignment.center,
                                                          child: const Text(
                                                            'Tagging',
                                                            style: TextStyle(
                                                              color: Color(0xFF07A1B4),
                                                              fontSize: 12,
                                                              fontFamily: 'Noto Sans TC',
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(width: 4,),
                                                        Container(
                                                          width: 62,
                                                          height: 22,
                                                          decoration: ShapeDecoration(
                                                            shape: RoundedRectangleBorder(
                                                              side: const BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                              borderRadius: BorderRadius.circular(10),
                                                            ),
                                                          ),
                                                          alignment: Alignment.center,
                                                          child: const Text(
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
                                                    Row(
                                                      children: [
                                                        Text(
                                                          '\$${propertylist[index]['defaultRent']}',
                                                          style: const TextStyle(
                                                            color: Color(0xFFE86100),
                                                            fontSize: 16,
                                                            fontFamily: 'Noto Sans TC',
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                        const Text(
                                                          '/月',
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
                                              ],
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (_isOverlayVisible) ...[
              Positioned(
                top: 41 * hScale,
                left: 0,
                right: 0,
                bottom: 0,
                child: ModalBarrier(
                  color: Colors.black54,
                  dismissible: true,
                  onDismiss: () {
                    setState(() {
                      _showContainer = !_showContainer;
                      _isOverlayVisible = false;
                    });
                  },
                ),
              ),
            ],
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(widget.tab.length, (index) {
                            return InkWell(
                              onTap: () {
                                _isOverlayVisible = !_isOverlayVisible;
                                setState(() {
                                  _showContainer = !_showContainer;
                                  _selectedIndex = index;
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (index == 4) ...[
                                    SvgPicture.asset('assets/icons/rental_page/sorting.svg'),
                                  ] else ...[
                                    Row(
                                      children: [
                                        Text(
                                          widget.tab[index],
                                          style: TextStyle(
                                            color: _selectedIndex == index ? const Color(0xFF07A1B4) : const Color(0xFF333333),
                                            fontFamily: 'Noto Sans TC',
                                            fontSize: 20,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: _selectedIndex == index ? const Color(0xFF07A1B4) : const Color(0xFF333333),
                                        ),
                                      ],
                                    ),
                                  ]
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                      const Divider(height: 0,),
                    ],
                  ),
                ),
                Visibility(
                  visible: _showContainer,
                  child: widget.filterWidget[_selectedIndex],
                  // child: FunctionWidget2(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}