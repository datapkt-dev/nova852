import 'package:flutter/material.dart';
import 'package:nova852/pages/index/news_content.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  final List<String> tab = ['最新文章', '新盤', '成交行情', '私人屋苑', '工商舗', '公營/資助房屋', '城市發展', '地產錦囊', '專欄'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text('樓市新聞'),
        centerTitle: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // padding: EdgeInsets.symmetric(horizontal: 12),
        color: Color(0xFFF2F2F2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10,),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF171717),),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: TextField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: '輸入關鍵字',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        alignment: Alignment.center,
                        child: Row(
                          children: List.generate(tab.length, (index) {
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
                                      tab[index],
                                      style: TextStyle(
                                        color: _selectedIndex == index ? Colors.white : Color(0xFF07A1B4),
                                        fontSize: 12,
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
                  ],
                ),
              ),
              SizedBox(height: 4,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: List.generate(10, (index) {
                    return GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          width: double.infinity,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                height: 96,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/index/news_page.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                              SizedBox(width: 12,),
                              const Expanded(
                                child: SizedBox(
                                  height: 96,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '6月租務旺季 東涌藍天海岸創區內呎租新高6月租務旺季 東涌藍天海岸創區內呎租新高6月租務旺季 東涌藍天海岸創區內呎租新高',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xFF171717),
                                          fontSize: 16,
                                          fontFamily: 'Noto Sans TC',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '#Tagging',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '06/03/2024',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Nova編輯',
                                            style: TextStyle(
                                              color: Color(0xFFB3B3B3),
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans TC',
                                              fontWeight: FontWeight.w400,
                                            ),
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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsContent()));
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
