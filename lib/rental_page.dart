import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RentalPage extends StatefulWidget {
  const RentalPage({super.key});

  @override
  State<RentalPage> createState() => _RentalPageState();
}

class _RentalPageState extends State<RentalPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/8852;
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
                Text('data'),
                Expanded(child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          color: Colors.cyanAccent,
                          child: Row(
                            children: [
                              Container(
                                width: 136,
                                height: 116,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(width: 8,),
                              Column(
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
                  separatorBuilder: (context, index) => Divider(height: 1),
                  itemCount: 5,
                ),),
              ],
            )
        ),
    );
  }
}