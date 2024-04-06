import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/item_deatil.dart';

class RentalPageLab extends StatefulWidget {
  RentalPageLab({super.key});

  final List<String> tab = ['區域', '價錢', '用途', '更多', '排序'];
  final List<String> tab2 = ['減價盤', '上車盤', '7日新上架', '筍盤', '9成按揭', '獨家盤', '業主盤', '鎖匙盤'];

  @override
  State<RentalPageLab> createState() => _RentalPageLabState();
}

class _RentalPageLabState extends State<RentalPageLab> with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;
  double _height = 40;
  bool _showContainer = false;

  final List<Widget> myTabs = [
    Tab(text: '區域'),
    Tab(text: 'two'),
    Tab(text: 'three'),
  ];

  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Scaffold(
        appBar: AppBar(
          title: Text('租屋'),
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
            child: Column(
              children: [
                // TabBar(
                //   controller: _tabController,
                //   labelColor: Colors.redAccent,
                //   tabs: myTabs,
                // ),
                AnimatedContainer(
                  //height: 440,
                  //padding: EdgeInsets.only(left: 16, right: 16, top: 0),
                  duration: Duration(milliseconds: 300),
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(widget.tab.length, (index) {
                            return Container(
                              width: 72,
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _showContainer = !_showContainer;
                                    _selectedIndex = index;
                                    if (_height == 40) {
                                      _height = 100;
                                    } else {
                                      _height = 40;
                                    }
                                  });
                                },
                                onTapCancel: () {
                                  setState(() {
                                    _height = 40;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.tab[index],
                                      style: TextStyle(
                                        color: _selectedIndex == index ? Color(0xFFFF8000) : Color(0xFF333333),
                                        fontFamily: 'PingFang TC',
                                        fontSize: 18,
                                        //fontWeight: _selectedIndex == index ? FontWeight.w500 : FontWeight.w400,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: _selectedIndex == index ? Color(0xFFFF8000) : Color(0xFF333333),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Divider(height: 0,),
                      _showContainer?
                      Column(
                        children: [
                          Container(
                        //height: 313,
                        color: Color(0xFFF5F6F7),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    '全部用途',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '（30207）',
                                    style: TextStyle(
                                      color: Color(0xFF858585),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    '住宅',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '（6744）',
                                    style: TextStyle(
                                      color: Color(0xFF858585),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    '寫字樓',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '（2795）',
                                    style: TextStyle(
                                      color: Color(0xFF858585),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    '工廠大廈',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '（19940）',
                                    style: TextStyle(
                                      color: Color(0xFF858585),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    '商鋪',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '（728）',
                                    style: TextStyle(
                                      color: Color(0xFF858585),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    '車位',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 16,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '（115）',
                                    style: TextStyle(
                                      color: Color(0xFF858585),
                                      fontSize: 13,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                          Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/search2.svg'),
                                SizedBox(width: 8,),
                                Text(
                                  '更新並儲存以上搜尋條件',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 15,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '儲存',
                              style: TextStyle(
                                color: Color(0xFFFF8000),
                                fontSize: 15,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        )
                      ),
                          Container(
                        padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('重置'),
                            Text('確定'),
                          ],
                        )
                      ),
                        ]
                      ) : Container(),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(widget.tab2.length, (index) {
                        return Row(
                          children: [
                            Container(
                              height: 34,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              color: _selectedIndex == index ? Color(0xFFFF8000) : Color(0xFFF3F4F6),
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        widget.tab2[index],
                                        style: TextStyle(
                                          color: _selectedIndex == index ? Colors.white : Color(0xFF333333),
                                          fontFamily: 'PingFang TC',
                                          fontSize: 18,
                                          //fontWeight: _selectedIndex == index ? FontWeight.w500 : FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(width: 8,),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetail()));
                      },
                      child: Column(
                        children: [
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0XFFFEF5EB),
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 10,
                                    spreadRadius: 10,
                                    offset: Offset(0, 30),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      SizedBox(
                                        width: 150,
                                        child: Image.asset('assets/images/rentalitem.jpeg'),
                                      ),
                                      Container(
                                        width: 52,
                                        height: 20,
                                        decoration: const ShapeDecoration(
                                          color: Colors.black,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 4,),
                                            SvgPicture.asset('assets/icons/diamond.svg'),
                                            const SizedBox(width: 2,),
                                            const Text(
                                              '鑽石',
                                              style: TextStyle(
                                                color: Color(0xFFF0C790),
                                                fontSize: 12,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w500,
                                                height: 0.08,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        bottom: 0,
                                        child: SvgPicture.asset('assets/icons/videoplay.svg'),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 230,
                                        child: Text(
                                          '近交流道大面寬黃金雙店面',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 18,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '車位｜太古城',
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(height: 4,),
                                      Text(
                                        '\$60 萬',
                                        style: TextStyle(
                                          color: Color(0xFFF12323),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          //letterSpacing: 0.40,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                          ),
                          SizedBox(height: 16,)
                        ],
                      ),
                    );
                  },
                    itemCount: 5,
                  ),
                ),
              ],
            )
        ),
    );
  }
}

//-------------------------------------------------------------------
class RentalPageLab1 extends StatefulWidget {
  @override
  _RentalPageLab1State createState() => _RentalPageLab1State();
}

class _RentalPageLab1State extends State<RentalPageLab> with SingleTickerProviderStateMixin {
  final List<Widget> myTabs = [
    Tab(text: 'one'),
    Tab(text: 'two'),
    Tab(text: 'three'),
  ];

  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  _listItem() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.blueAccent,
        ),
      ),
      height: 120,
      child: Center(
        child: Text('List Item', style: TextStyle(fontSize: 20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _listItem(),
          TabBar(
            controller: _tabController,
            labelColor: Colors.redAccent,
            tabs: myTabs,
          ),
          Center(
            child: [
              Text('first tab'),
              Column(
                children: [
                  Text('second tab'),
                  ...List.generate(10, (index) => Text('line: $index'))
                ],
              ),
              Column(
                children: [
                  Text('third tab'),
                  ...List.generate(20, (index) => Text('line: $index'))
                ],
              ),
            ][_tabController.index],
          ),
          _listItem(),
          _listItem(),
        ],
      ),
    );
  }
}

