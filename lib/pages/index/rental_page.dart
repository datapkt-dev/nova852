import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/item_detail.dart';
import 'package:nova852/lab/components/function.dart';
import 'package:nova852/lab/components/price.dart';
import 'package:nova852/pages/index/components/area.dart';
import 'package:nova852/pages/index/components/function.dart';
import 'package:nova852/pages/index/components/more.dart';

class RentalPage extends StatefulWidget {
  RentalPage({super.key});

  final List<String> tab = ['用途', '地區', '價錢', '面積', '其他', '排序'];
  final List<String> tab2 = ['Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging', 'Tagging'];
  final filterWidget = [FunctionWidget2(), AreaWidget2(), PriceWidget(), Container(), MoreWidget(), Container()];

  @override
  State<RentalPage> createState() => _RentalPageState();
}

class _RentalPageState extends State<RentalPage> {
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
            child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 35,),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  height: 50,
                                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
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
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.symmetric(horizontal: 12),
                                              //color: _selectedIndex == index ? Color(0xFF3093EE) : Color(0xFFF3F4F6),
                                              child: Text(
                                                widget.tab2[index],
                                                style: TextStyle(
                                                  color: Color(0xFF07A1B4),
                                                  fontSize: 8,
                                                  fontFamily: 'Noto Sans TC',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 4,),
                                        ],
                                      );
                                    }),
                                  ),
                                ),
                              ),
                                Column(
                                children: List.generate(4, (index) {
                                  return Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    padding: EdgeInsets.all(12),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetail()));
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 120,
                                              height: 132,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/images/featured_item.png'),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                              ),
                                            ),
                                            SizedBox(width: 10,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '將軍澳 東港城 1座 高層 C室',
                                                    style: TextStyle(
                                                      color: Color(0xFF171717),
                                                      fontSize: 14,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        '實用 463呎',
                                                        style: TextStyle(
                                                          color: Color(0xFF171717),
                                                          fontSize: 10,
                                                          fontFamily: 'Noto Sans TC',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                      SizedBox(width: 8,),
                                                      Text(
                                                        '@ \$10,234',
                                                        style: TextStyle(
                                                          color: Color(0xFFB3B3B3),
                                                          fontSize: 10,
                                                          fontFamily: 'Noto Sans TC',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    '1房 1廳',
                                                    style: TextStyle(
                                                      color: Color(0xFF171717),
                                                      fontSize: 10,
                                                      fontFamily: 'Noto Sans TC',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                  Divider(color: Color(0xFF171717),),
                                                  Text(
                                                    '獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢【東涌小T】海柏名海柏名邸獨立屋獨立屋 全幢【東涌小T】海柏名邸獨立屋 罕放租獨立屋 全幢【東涌小T】海柏名海柏名邸獨立屋',
                                                    style: TextStyle(
                                                      color: Color(0xFF171717),
                                                      fontSize: 10,
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
                                                            width: 57,
                                                            height: 20,
                                                            decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                                borderRadius: BorderRadius.circular(10),
                                                              ),
                                                            ),
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              'Tagging',
                                                              style: TextStyle(
                                                                color: Color(0xFF07A1B4),
                                                                fontSize: 8,
                                                                fontFamily: 'Noto Sans TC',
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 4,),
                                                          Container(
                                                            width: 57,
                                                            height: 20,
                                                            decoration: ShapeDecoration(
                                                              shape: RoundedRectangleBorder(
                                                                side: BorderSide(width: 0.50, color: Color(0xFF07A1B4)),
                                                                borderRadius: BorderRadius.circular(10),
                                                              ),
                                                            ),
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              'Tagging',
                                                              style: TextStyle(
                                                                color: Color(0xFF07A1B4),
                                                                fontSize: 8,
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
                                                            '\$900',
                                                            style: TextStyle(
                                                              color: Color(0xFFE86100),
                                                              fontSize: 14,
                                                              fontFamily: 'Noto Sans TC',
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            '萬',
                                                            style: TextStyle(
                                                              color: Color(0xFFE86100),
                                                              fontSize: 10,
                                                              fontFamily: 'Noto Sans TC',
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(widget.tab.length, (index) {
                                    return Container(
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
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (index == 5) ...[
                                              SvgPicture.asset('assets/icons/rental_page/sorting.svg'),
                                            ] else ...[
                                              Text(
                                                widget.tab[index],
                                                style: TextStyle(
                                                  color: _selectedIndex == index ? Color(0xFF07A1B4) : Color(0xFF333333),
                                                  fontFamily: 'PingFang TC',
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: _selectedIndex == index ? Color(0xFF07A1B4) : Color(0xFF333333),
                                              ),
                                            ]
                                          ],
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
    );
  }
}