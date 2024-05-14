import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/item_deatil.dart';
import 'package:nova852/lab/components/price.dart';
import 'package:nova852/pages/index/buying_detail.dart';
import 'package:nova852/pages/index/components/area.dart';
import 'package:nova852/pages/index/components/function.dart';

class BuyingPage extends StatefulWidget {
  BuyingPage({super.key});

  final List<String> tab = ['區域', '價錢', '用途', '更多', '排序'];
  final List<String> tab2 = ['減價盤', '上車盤', '7日新上架', '筍盤', '9成按揭', '獨家盤', '業主盤', '鎖匙盤'];
  final filterWidget = [AreaWidget2(), PriceWidget(), FunctionWidget2(), Container(), Container()];

  @override
  State<BuyingPage> createState() => _RentalPageState();
}

class _RentalPageState extends State<BuyingPage> {
  int _selectedIndex = 0;
  double _height = 40;
  bool _showContainer = false;
  final List<int> items = List<int>.generate(100, (i) => i + 1);
  bool _isOverlayVisible = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('買樓'),
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
                SizedBox(height: 40*hScale,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 50 * hScale,
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(widget.tab2.length, (index) {
                        return Row(
                          children: [
                            Container(
                              height: 34,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              color: _selectedIndex == index ? Color(0xFF3093EE) : Color(0xFFF3F4F6),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BuyingDetail()));
                        },
                        child: Column(
                          children: [
                            Container(
                              //width: double.infinity,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0XFFE8FCFF),
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
                                    Flexible(
                                        flex: 10,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                SizedBox(
                                                  width: 150 * wScale,
                                                  child: Image.asset('assets/images/rentalitem.jpeg'),
                                                ),
                                                Container(
                                                  width: 52 * wScale,
                                                  height: 20 * hScale,
                                                  decoration: const ShapeDecoration(
                                                    color: Colors.black,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(width: 4 * wScale,),
                                                      SvgPicture.asset('assets/icons/diamond.svg'),
                                                      SizedBox(width: 2 * wScale,),
                                                      Text(
                                                        '鑽石',
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
                                                Positioned(
                                                  left: 0,
                                                  bottom: 0,
                                                  child: SvgPicture.asset('assets/icons/videoplay.svg'),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 16,),
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFE8FCFF),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(28),
                                                ),
                                              ),
                                              child: Text(
                                                '3天前刊登',
                                                style: TextStyle(
                                                  color: Color(0xFF858585),
                                                  fontSize: 13,
                                                  fontFamily: 'PingFang TC',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                    SizedBox(width: 8,),
                                    Flexible(
                                      flex: 16,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 200 * wScale,
                                            child: Text(
                                              '近交流道大面寬黃金雙店面',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 18,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Text(
                                            '2房｜實471呎 ｜ 泰峯',
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
                                          Wrap(
                                            spacing: 8,
                                            runSpacing: 8,
                                            children: [
                                              Container(
                                                constraints: BoxConstraints(maxWidth: 49),
                                                alignment: Alignment.center,
                                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF2F6FC),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                                ),
                                                child: Text(
                                                  '近學區',
                                                  style: TextStyle(
                                                    color: Color(0xFF333333),
                                                    fontSize: 13,
                                                    fontFamily: 'PingFang TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                constraints: BoxConstraints(maxWidth: 49),
                                                alignment: Alignment.center,
                                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF2F6FC),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                                ),
                                                child: Text(
                                                  '近學區',
                                                  style: TextStyle(
                                                    color: Color(0xFF333333),
                                                    fontSize: 13,
                                                    fontFamily: 'PingFang TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                constraints: BoxConstraints(maxWidth: 49),
                                                alignment: Alignment.center,
                                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF2F6FC),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                                ),
                                                child: Text(
                                                  '近學區',
                                                  style: TextStyle(
                                                    color: Color(0xFF333333),
                                                    fontSize: 13,
                                                    fontFamily: 'PingFang TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                constraints: BoxConstraints(maxWidth: 49),
                                                alignment: Alignment.center,
                                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF2F6FC),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                                ),
                                                child: Text(
                                                  '近學區',
                                                  style: TextStyle(
                                                    color: Color(0xFF333333),
                                                    fontSize: 13,
                                                    fontFamily: 'PingFang TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                constraints: BoxConstraints(maxWidth: 49),
                                                alignment: Alignment.center,
                                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF2F6FC),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                                ),
                                                child: Text(
                                                  '近學區',
                                                  style: TextStyle(
                                                    color: Color(0xFF333333),
                                                    fontSize: 13,
                                                    fontFamily: 'PingFang TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                constraints: BoxConstraints(maxWidth: 49),
                                                alignment: Alignment.center,
                                                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFF2F6FC),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                                ),
                                                child: Text(
                                                  '近學區',
                                                  style: TextStyle(
                                                    color: Color(0xFF333333),
                                                    fontSize: 13,
                                                    fontFamily: 'PingFang TC',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            SizedBox(height: 16 * hScale,)
                          ],
                        ),
                      );
                    },
                    itemCount: 5,
                  ),
                )
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
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        alignment: Alignment.center,
                        child: Row(
                          children: List.generate(widget.tab.length, (index) {
                            return Flexible(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    _isOverlayVisible = !_isOverlayVisible;
                                    setState(() {
                                      _showContainer = !_showContainer;
                                      _selectedIndex = index;
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        widget.tab[index],
                                        style: TextStyle(
                                          color: _selectedIndex == index ? Color(0xFF50C5D5) : Color(0xFF333333),
                                          fontFamily: 'PingFang TC',
                                          fontSize: 18,
                                          //fontWeight: _selectedIndex == index ? FontWeight.w500 : FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: _selectedIndex == index ? Color(0xFF50C5D5) : Color(0xFF333333),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Divider(height: 0,),
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
      backgroundColor: Colors.white,
    );
  }
}