import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OldMortgagePage extends StatefulWidget {
  const OldMortgagePage({super.key});

  @override
  State<OldMortgagePage> createState() => _MortgagePageState();
}

class _MortgagePageState extends State<OldMortgagePage> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    double hScale = screenHeight/852;
    double wScale = screenWidth/393;

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('按揭/稅費'),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber,
                // color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19333333),
                    blurRadius: 0,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '樓盤價格',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // TextField(
                          //   obscureText: false,
                          //   maxLines: 1,
                          //   decoration: InputDecoration(
                          //     border: InputBorder.none,
                          //     hintText: 'A1234567',
                          //     hintStyle: TextStyle(
                          //       color: Color(0XFF888888),
                          //     ),
                          //     isDense: true,
                          //     contentPadding: EdgeInsets.zero,
                          //   ),
                          //   style: TextStyle(
                          //     color: Color(0xFF333333),
                          //     fontSize: 18,
                          //     fontFamily: 'PingFang TC',
                          //     fontWeight: FontWeight.w400,
                          //   ),
                          // ),
                          Text(
                            '300',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 18,
                              fontFamily: 'PingFang TC',
                              fontWeight: FontWeight.w400,
                              height: 0.07,
                            ),
                          ),
                          const SizedBox(width: 7),
                          Text(
                            '萬元',
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 15,
                              fontFamily: 'PingFang TC',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1),
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19333333),
                    blurRadius: 0,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '按揭比例',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '90%（270）萬',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 15,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1),
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19333333),
                    blurRadius: 0,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '按揭還款期',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '30年（360）期',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 15,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1),
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19333333),
                    blurRadius: 0,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '按揭年息',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '2.5',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 18,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w400,
                                  height: 0.07,
                                ),
                              ),
                              const SizedBox(width: 7),
                              Text(
                                '%',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 15,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4*hScale,),
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              child: Text(
                '印花稅',
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 15,
                  fontFamily: 'PingFang TC',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
            ),
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19333333),
                    blurRadius: 0,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '樓盤價格',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '不適用',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 15,
                                  fontFamily: 'PingFang TC',
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19333333),
                    blurRadius: 0,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '買家印花稅',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  Container(
                    child: Switch(
                      // This bool value toggles the switch.
                      value: light,
                      activeColor: Color(0xFF50C5D5),
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          light = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              child: Text(
                '*非香港居民或以公司名義購入（稅率劃ㄧ為15%）。',
                style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 15,
                  fontFamily: 'PingFang TC',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
            ),
            Container(
              width: 393*wScale,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19333333),
                    blurRadius: 0,
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '雙倍印花稅',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                  Container(
                    child: Switch(
                      // This bool value toggles the switch.
                      value: light,
                      activeColor: Color(0xFF50C5D5),
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          light = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xFF50C5D5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3), // 設定按鈕圓角為3
                    ),
                ),
                onPressed: () {},
                child: const Text('開始計算'),
              ),
            ),
          ],
        ),
      )
    );
  }
}
