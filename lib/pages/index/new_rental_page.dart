import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/pages/index/components/price.dart';
import 'package:nova852/pages/index/components/area.dart';
import 'package:nova852/pages/index/components/function.dart';
import 'package:nova852/pages/index/components/more.dart';
import 'package:http/http.dart' as http;
import '../../config/app_config.dart';
import '../../item_detail.dart';

class NewRentalPage extends StatefulWidget {
  const NewRentalPage({super.key});

  @override
  State<NewRentalPage> createState() => _NewRentalPageState();
}

class _NewRentalPageState extends State<NewRentalPage> {
  final String _baseUrl = AppConfig.baseURL;

  final List<String> tab = ['用途', '地區', '價錢', '其他', '排序'];
  final List<String> tag = ['Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging'];
  final filterWidget = [const FunctionWidget2(), const AreaWidget2(), const PriceWidget(), const MoreWidget(), Container()];
  int _selectedTab = 0;
  int _selectedTag = 0;
  bool _filterExpand = false;
  List<Map<String, dynamic>> propertyList = [];

  @override
  void initState() {
    super.initState();
    fetchProperties();
  }

  Future<void> fetchProperties() async {
    final response = await http.get(Uri.parse('$_baseUrl/properties'));
    if (response.statusCode == 200) {
      List<dynamic> properties = json.decode(response.body);
      setState(() {
        propertyList = properties.map((item) => item as Map<String, dynamic>).toList();
      });
    } else {
      throw Exception('Failed to load properties');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          physics: _filterExpand ? const NeverScrollableScrollPhysics() : const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(tab.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_selectedTab == index) {
                            _filterExpand = !_filterExpand;
                          } else {
                            _filterExpand = true;
                            _selectedTab = index;
                          }
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
                                  tab[index],
                                  style: TextStyle(
                                    color: _selectedTab == index ? const Color(0xFF07A1B4) : const Color(0xFF333333),
                                    fontFamily: 'Noto Sans TC',
                                    fontSize: 20,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: _selectedTab == index ? const Color(0xFF07A1B4) : const Color(0xFF333333),
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
              if (_filterExpand && _selectedTab != 4)
                filterWidget[_selectedTab]
              else Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12,),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(5, (index) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedTag = index;
                                  });
                                },
                                child: Container(
                                  height: 20,
                                  decoration: ShapeDecoration(
                                    gradient: _selectedTag == index ? const LinearGradient(
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
                                    'Tagging',
                                    style: TextStyle(
                                      color: _selectedTag == index ? Colors.white : const Color(0xFF07A1B4),
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
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 8,
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FC9C9C9),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xFFF2F2F2),
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: List.generate(propertyList.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6,),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetail(itemData: propertyList[index],)));
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
                                  Container(
                                    width: 120,
                                    height: 164,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.grey[200],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Stack(
                                        children: [
                                          Image.network(
                                            propertyList[index]['ad_parameters']['thumbnail_url'],
                                            fit: BoxFit.cover,
                                          ),
                                          propertyList[index]['ad_parameters']['bookmark']
                                              ? Positioned(
                                            top: 6,
                                            right: 7,
                                            child: SvgPicture.asset('assets/icons/collected.svg'),
                                          )
                                              : Container(),
                                        ],
                                      ),
                                    ),
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
                                            propertyList[index]['ad_parameters']['title'],
                                            style: const TextStyle(
                                              color: Color(0xFF171717),
                                              fontSize: 16,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                '實用 ${propertyList[index]['ad_parameters']['usable_area']}${propertyList[index]['ad_parameters']['unit']}',
                                                style: const TextStyle(
                                                  color: Color(0xFF6D6D6D),
                                                  fontSize: 14,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const SizedBox(width: 8,),
                                              const Text(
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
                                            '${propertyList[index]['layout']}',
                                            style: const TextStyle(
                                              color: Color(0xFF6D6D6D),
                                              fontSize: 14,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const Divider(color: Color(0xFF6D6D6D),),
                                          Text(
                                            propertyList[index]['ad_parameters']['description'],
                                            style: const TextStyle(
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
                                                children: List.generate(2, (index2) {
                                                  return Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 1,),
                                                    child: Container(
                                                      height: 22,
                                                      padding: const EdgeInsets.symmetric(horizontal: 5,),
                                                      decoration: ShapeDecoration(
                                                        shape: RoundedRectangleBorder(
                                                          side: const BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),
                                                      ),
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        propertyList[index]['ad_parameters']['label'][index2],
                                                        style: const TextStyle(
                                                          color: Color(0xFF07A1B4),
                                                          fontSize: 12,
                                                          fontFamily: 'Noto Sans TC',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '\$${propertyList[index]['ad_parameters']['rent']}',
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
