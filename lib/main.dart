import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '這裡是feature分支!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 345,
                      height: 44,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '請輸入搜索內容',
                          hintStyle: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Row(
                            children: [
                              DropdownButton(
                                value: '0',
                                items: [
                                  DropdownMenuItem(
                                    value: '0',
                                    child: Text('新盤'),
                                  ),
                                ],
                                onChanged: (value) {},
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 0),
                                  child: Container(
                                    child: SvgPicture.asset('assets/icons/search.svg'),
                                  )
                              ),
                            ],
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                        cursorColor: Colors.black,
                      ),
                    ),  //搜尋
                    SizedBox(height: 16,),
                    Container(
                      width: 320,
                      height: 184,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/landscape.jpeg'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19222222),
                            blurRadius: 10,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ), //圖片輪播
                    SizedBox(height: 16,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text('租屋')
                            ],
                          ),
                          SizedBox(width: 42,),
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text('租屋')
                            ],
                          ),
                          SizedBox(width: 42,),
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text('租屋')
                            ],
                          ),
                        ],
                      ),
                    ),  //租屋
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 174,
                              height: 160,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFFEBE3),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Container(
                                width: 132,
                                height: 37,
                                margin: EdgeInsets.only(top: 21, left: 11),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '本月熱盤追擊',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w500,
                                        height: 0.08,
                                        letterSpacing: 0.75,
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      '本月瀏覽量最高新盤排名',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              width: 174,
                              height: 77,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFFE5C4),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Container(
                                width: 132,
                                height: 37,
                                margin: EdgeInsets.only(top: 21, left: 11),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '第五類標題',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w500,
                                        height: 0.08,
                                        letterSpacing: 0.75,
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      '第五分類副標',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              width: 174,
                              height: 77,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFFE5C4),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Container(
                                width: 132,
                                height: 37,
                                margin: EdgeInsets.only(top: 21, left: 11),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '第六類標題',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w500,
                                        height: 0.08,
                                        letterSpacing: 0.75,
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      '第六分類副標',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 13,),
                        Column(
                          children: [
                            Container(
                              width: 174,
                              height: 77,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFFE5C4),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Container(
                                width: 132,
                                height: 37,
                                margin: EdgeInsets.only(top: 21, left: 11),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '500萬內筍盤',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w500,
                                        height: 0.08,
                                        letterSpacing: 0.75,
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      '低價上車',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              width: 174,
                              height: 160,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFFECE3),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Container(
                                width: 132,
                                height: 37,
                                margin: EdgeInsets.only(top: 21, left: 11),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '今日熱門筍盤',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w500,
                                        height: 0.08,
                                        letterSpacing: 0.75,
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      '500萬內筍盤',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              width: 174,
                              height: 77,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFFECE3),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              ),
                              child: Container(
                                width: 132,
                                height: 37,
                                margin: EdgeInsets.only(top: 21, left: 11),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '第四類標題',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 15,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w500,
                                        height: 0.08,
                                        letterSpacing: 0.75,
                                      ),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      '第四分類副標',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),  //三色塊
                    SizedBox(height: 28,),
                    Container(
                      width: 361,
                      height: 490,
                      //color: Colors.blue,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '精選',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '更多',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 15,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                  letterSpacing: 0.75,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 168,
                                    height: 128,
                                    child: Image.asset('assets/images/house_a.jpeg'),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width:168,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '900',
                                              style: TextStyle(
                                                color: Color(0xFFF12323),
                                                fontSize: 20,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0.06,
                                                letterSpacing: 0.40,
                                              ),
                                            ),
                                            Text(
                                              '萬',
                                              style: TextStyle(
                                                color: Color(0xFFF12323),
                                                fontSize: 15,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w500,
                                                height: 0.08,
                                                letterSpacing: 0.75,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '實36坪',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 13,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                                height: 0.08,
                                              ),
                                            ),
                                            Text(
                                              '2房',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 13,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                                height: 0.08,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                      width: 168,
                                      height: 45,
                                      child: Text(
                                        '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.75,
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(width: 25,),
                              Column(
                                children: [
                                  Container(
                                    width: 168,
                                    height: 128,
                                    child: Image.asset('assets/images/house_b.jpeg'),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width:168,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '1688',
                                              style: TextStyle(
                                                color: Color(0xFFF12323),
                                                fontSize: 20,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0.06,
                                                letterSpacing: 0.40,
                                              ),
                                            ),
                                            Text(
                                              '萬',
                                              style: TextStyle(
                                                color: Color(0xFFF12323),
                                                fontSize: 15,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w500,
                                                height: 0.08,
                                                letterSpacing: 0.75,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '實42坪',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 13,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                                height: 0.08,
                                              ),
                                            ),
                                            Text(
                                              '3房',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 13,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                                height: 0.08,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                      width: 168,
                                      height: 45,
                                      child: Text(
                                        '獨賣挑高美景大3房',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.75,
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 168,
                                    height: 128,
                                    child: Image.asset('assets/images/house_c.jpeg'),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width:168,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '900',
                                              style: TextStyle(
                                                color: Color(0xFFF12323),
                                                fontSize: 20,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0.06,
                                                letterSpacing: 0.40,
                                              ),
                                            ),
                                            Text(
                                              '萬',
                                              style: TextStyle(
                                                color: Color(0xFFF12323),
                                                fontSize: 15,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w500,
                                                height: 0.08,
                                                letterSpacing: 0.75,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '實36坪',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 13,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                                height: 0.08,
                                              ),
                                            ),
                                            Text(
                                              '2房',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 13,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                                height: 0.08,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                      width: 168,
                                      height: 45,
                                      child: Text(
                                        '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.75,
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(width: 25,),
                              Column(
                                children: [
                                  Container(
                                    width: 168,
                                    height: 128,
                                    child: Image.asset('assets/images/house_d.jpeg'),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                    width:168,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '900',
                                              style: TextStyle(
                                                color: Color(0xFFF12323),
                                                fontSize: 20,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w500,
                                                height: 0.06,
                                                letterSpacing: 0.40,
                                              ),
                                            ),
                                            Text(
                                              '萬',
                                              style: TextStyle(
                                                color: Color(0xFFF12323),
                                                fontSize: 15,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w500,
                                                height: 0.08,
                                                letterSpacing: 0.75,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '實36坪',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 13,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                                height: 0.08,
                                              ),
                                            ),
                                            Text(
                                              '2房',
                                              style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 13,
                                                fontFamily: 'PingFang TC',
                                                fontWeight: FontWeight.w400,
                                                height: 0.08,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 6,),
                                  Container(
                                      width: 168,
                                      height: 45,
                                      child: Text(
                                        '獨賣挑高美景大3房',
                                        style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 15,
                                          fontFamily: 'PingFang TC',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.75,
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),  //精選
                    SizedBox(height: 40,),
                    Container(
                      width: 168,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('租屋'),
                              SizedBox(width: 32,),
                              Text('新盤'),
                              SizedBox(width: 32,),
                              Text('買樓'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          )
        ),
      ),
    );
  }
}
