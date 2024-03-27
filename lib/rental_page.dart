import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RentalPage extends StatefulWidget {
  RentalPage({super.key});

  final List<String> tab = ['區域', '價錢', '用途', '更多', '排序'];
  final List<String> tab2 = ['7日新上架', '筍盤', '減價盤', '可分租', '業主盤'];

  @override
  State<RentalPage> createState() => _RentalPageState();
}

class _RentalPageState extends State<RentalPage> {
  int _selectedIndex = 0;

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
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(widget.tab.length, (index) {
                      return Container(
                        width: 72,
                        alignment: Alignment.center,
                        child: InkWell(
                            onTap: () {
                                setState(() {
                                  _selectedIndex = index;
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
                              color: _selectedIndex == index ? Color(0xFFEE4130) : Color(0xFFF3F4F6),
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
                    return Column(
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
                                  SizedBox(height: 4,),
                                  Row(
                                    children: [
                                      Container(
                                        //width: 47,
                                        height: 22,
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
                                      SizedBox(width: 8,),
                                      Container(
                                        //width: 47,
                                        height: 22,
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
                                      SizedBox(width: 8,),
                                      Container(
                                        //width: 47,
                                        height: 22,
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
                                      SizedBox(width: 8,),
                                      Container(
                                        //width: 47,
                                        height: 22,
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
                                      SizedBox(width: 8,),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      Container(
                                        //width: 47,
                                        height: 22,
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
                                      SizedBox(width: 8,),
                                      Container(
                                        //width: 47,
                                        height: 22,
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
                                      SizedBox(width: 8,),
                                      Container(
                                        //width: 47,
                                        height: 22,
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
                                      SizedBox(width: 8,),
                                      Container(
                                        //width: 47,
                                        height: 22,
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
                                      SizedBox(width: 8,),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                        SizedBox(height: 16,)
                      ],
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