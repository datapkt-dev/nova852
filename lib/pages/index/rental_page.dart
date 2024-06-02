import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/item_detail.dart';
import 'package:nova852/lab/components/function.dart';
import 'package:nova852/lab/components/price.dart';
import 'package:nova852/pages/index/components/area.dart';
import 'package:nova852/pages/index/components/function.dart';
import 'package:nova852/pages/index/components/list_item.dart';
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
                                                  gradient: _selectedIndex == index ? LinearGradient(
                                                    begin: Alignment(0.99, -0.16),
                                                    end: Alignment(-0.99, 0.16),
                                                    colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                                  ) : null,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 0.50,
                                                      color: Color(0xFF07A1B4),
                                                    ),
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                                padding: EdgeInsets.symmetric(horizontal: 12),
                                                child: Text(
                                                  widget.tab2[index],
                                                  style: TextStyle(
                                                    color: _selectedIndex == index ? Colors.white : Color(0xFF07A1B4),
                                                    fontSize: 10,
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
                                        child: ListItem(),
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
                                                  fontFamily: 'Noto Sans TC',
                                                  fontSize: 20,
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