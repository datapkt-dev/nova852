import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nova852/components/bottombar.dart';
import 'package:nova852/components/button_s.dart';
import 'package:nova852/components/featured_items.dart';
import 'package:nova852/components/info.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;
  final List<String> tab = ['租屋', '新盤', '買樓'];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  String? dropdownValue = '新盤';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 380,
                  height: 44,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFEEEEEE)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      DropdownButton(
                        underline: Container(),
                        value: dropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: widget.tab.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Color(0xFF333333),
                              ),
                            ),
                          );
                        }).toList(), // 转换为列表
                      ),
                      Expanded(
                        child: TextFormField(
                        controller: null,
                        onChanged: null,
                        decoration: InputDecoration(
                          hintText: "輸入街道或路名",
                          border: InputBorder.none,
                          //focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFEEEEEE))),
                          prefixIcon: Icon(Icons.search),
                          // suffixIcon: IconButton(
                          //   icon: Icon(Icons.clear),
                          //   onPressed: () {},
                          // ),
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                        ),
                      ),
                      ),
                    ],
                  )
                ),
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
                      ButtonS(buttonText: '租屋'),
                      SizedBox(width: 42,),
                      ButtonS(buttonText: '買樓'),
                      SizedBox(width: 42,),
                      ButtonS(buttonText: '按揭'),
                    ],
                  ),
                ),  //租屋
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        InfoBoard(title: '本月熱盤追擊', subtitle: '本月瀏覽量最高新盤排名', bcolor: 0xFFFFEBE3, large: true,),
                        SizedBox(height: 8,),
                        InfoBoard(title: '第五類標題', subtitle: '第五分類副標', bcolor: 0xFFFFE5C4, large: false),
                        SizedBox(height: 8,),
                        InfoBoard(title: '第六類標題', subtitle: '第六分類副標', bcolor: 0xFFFFE5C4, large: false),
                      ],
                    ),
                    SizedBox(width: 13,),
                    Column(
                      children: [
                        InfoBoard(title: '500萬內筍盤', subtitle: '低價上車', bcolor: 0xFFFFE5C4, large: false),
                        SizedBox(height: 8,),
                        InfoBoard(title: '今日熱門筍盤', subtitle: '500萬內筍盤', bcolor: 0xFFFFECE3, large: true),
                        SizedBox(height: 8,),
                        InfoBoard(title: '第四類標題', subtitle: '第四分類副標', bcolor: 0xFFFFECE3, large: false),
                      ],
                    ),
                  ],
                ),  //三色塊
                SizedBox(height: 28,),
                Container(
                  width: 361,
                  height: 490,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Row(
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
                      const SizedBox(height: 12,),
                      Row(
                        children: [
                          FeaturedItems(img: 'assets/images/house_a.jpeg', price: 900, area: 36, rooms: 2, caption: '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面'),
                          const SizedBox(width: 25,),
                          FeaturedItems(img: 'assets/images/house_b.jpeg', price: 1688, area: 42, rooms: 3, caption: '獨賣挑高美景大3房'),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          FeaturedItems(img: 'assets/images/house_c.jpeg', price: 900, area: 36, rooms: 2, caption: '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面'),
                          const SizedBox(width: 25,),
                          FeaturedItems(img: 'assets/images/house_d.jpeg', price: 900, area: 36, rooms: 2, caption: '獨賣挑高美景大3房'),
                        ],
                      ),
                    ],
                  ),
                ),  //精選
                const SizedBox(height: 40,),
                SizedBox(
                  width: 361,
                  child: Column(
                    children: [
                      Row(
                        children: List.generate(3, (index) {
                          return Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  width: 40,
                                  alignment: Alignment.center,
                                  decoration: _selectedIndex == index ? BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color(0xFFD7A769),
                                        width: 2,
                                      ),
                                    ),
                                  ) : null,
                                  child: Text(
                                    widget.tab[index],
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontFamily: 'PingFang TC',
                                      fontSize: 18,
                                      fontWeight: _selectedIndex == index ? FontWeight.w500 : FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 32,),
                            ],
                          );
                        }),
                      ),
                      const SizedBox(height: 12,),
                      const SizedBox(height: 12,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        width: 361,
                        height: 137,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 123,
                                  height: 92,
                                  child: Image.asset('assets/images/house_d.jpeg'),
                                ),
                                SizedBox(height: 21,),
                              ],
                            ),
                            const SizedBox(width: 8,),
                            Column(
                              children: [
                                Container(
                                  width: 230,
                                  height: 19,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 52,
                                        height: 19,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          gradient: const LinearGradient(
                                            begin: Alignment(1.00, 0.00),
                                            end: Alignment(-1, 0),
                                            colors: [Color(0xFFD7A769), Color(0xFFDBA154)],
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                        ),
                                        child: const Text(
                                          '豪華裝潢',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8,),
                                      Container(
                                        width: 41,
                                        height: 19,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(width: 1, color: Color(0xFFD6D6D6)),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        child: const Text(
                                          '近學區',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4,),
                                SizedBox(
                                  width: 230,
                                  child: Text(
                                    '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 15,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.75,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Container(
                                  width: 230,
                                  height: 13,
                                  child: Row(
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
                                      SizedBox(width: 4,),
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
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  width: 230,
                                  child: Text(
                                    '900 萬',
                                    style: TextStyle(
                                      color: Color(0xFFF12323),
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.06,
                                      letterSpacing: 0.40,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Divider(),
                      SizedBox(height: 12,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        width: 361,
                        height: 137,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 123,
                                  height: 92,
                                  child: Image.asset('assets/images/house_c.jpeg'),
                                ),
                                SizedBox(height: 21,),
                              ],
                            ),
                            const SizedBox(width: 8,),
                            Column(
                              children: [
                                Container(
                                  width: 230,
                                  height: 19,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 52,
                                        height: 19,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          gradient: const LinearGradient(
                                            begin: Alignment(1.00, 0.00),
                                            end: Alignment(-1, 0),
                                            colors: [Color(0xFFD7A769), Color(0xFFDBA154)],
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                        ),
                                        child: const Text(
                                          '豪華裝潢',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8,),
                                      Container(
                                        width: 41,
                                        height: 19,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(width: 1, color: Color(0xFFD6D6D6)),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        child: const Text(
                                          '近學區',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4,),
                                SizedBox(
                                  width: 230,
                                  child: Text(
                                    '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 15,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.75,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Container(
                                  width: 230,
                                  height: 13,
                                  child: Row(
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
                                      SizedBox(width: 4,),
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
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  width: 230,
                                  child: Text(
                                    '1400 萬',
                                    style: TextStyle(
                                      color: Color(0xFFF12323),
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.06,
                                      letterSpacing: 0.40,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Divider(),
                      SizedBox(height: 12,),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        width: 361,
                        height: 137,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 123,
                                  height: 92,
                                  child: Image.asset('assets/images/house_e.jpeg'),
                                ),
                                SizedBox(height: 21,),
                              ],
                            ),
                            const SizedBox(width: 8,),
                            Column(
                              children: [
                                Container(
                                  width: 230,
                                  height: 19,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 52,
                                        height: 19,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          gradient: const LinearGradient(
                                            begin: Alignment(1.00, 0.00),
                                            end: Alignment(-1, 0),
                                            colors: [Color(0xFFD7A769), Color(0xFFDBA154)],
                                          ),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                        ),
                                        child: const Text(
                                          '豪華裝潢',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8,),
                                      Container(
                                        width: 41,
                                        height: 19,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(width: 1, color: Color(0xFFD6D6D6)),
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        child: const Text(
                                          '近學區',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 11,
                                            fontFamily: 'PingFang TC',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4,),
                                SizedBox(
                                  width: 230,
                                  child: Text(
                                    '近交流道大面寬黃金雙店面黃金雙店面黃金雙店面',
                                    style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: 15,
                                      fontFamily: 'PingFang TC',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.75,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Container(
                                  width: 230,
                                  height: 13,
                                  child: Row(
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
                                      SizedBox(width: 4,),
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
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  width: 230,
                                  child: Text(
                                    '1280 萬',
                                    style: TextStyle(
                                      color: Color(0xFFF12323),
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.06,
                                      letterSpacing: 0.40,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}