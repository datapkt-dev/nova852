import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MortgagePage extends StatefulWidget {
  const MortgagePage({super.key});

  @override
  State<MortgagePage> createState() => _MortgagePageState();
}

class _MortgagePageState extends State<MortgagePage> {
  bool light = true;
  int _selectedTerms = 0;
  int _selectedTax = 0;
  List terms = ['1年（12）期', '2年（24）期', '3年（36）期',];
  List taxIn = ['適用', '不適用'];

  void _showPicker(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 216,
          padding: const EdgeInsets.only(top: 6.0),
          // 讓 popup modal 對齊底部
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          // Popup model 背景.
          color: CupertinoColors.systemBackground.resolveFrom(context),
          child: SafeArea(
            top: false,
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: false,
        title: const Text('按揭/稅費'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFF2F2F2),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 56,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: const Row(
                    children: [
                      Text(
                        '樓盤價格',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 60,
                        child: TextField(
                          textAlign: TextAlign.end,
                          obscureText: false,
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '300',
                            hintStyle: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 18,
                              fontFamily: 'PingFang TC',
                              fontWeight: FontWeight.w400,
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 18,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        '萬元',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 1,),
                Container(
                  height: 56,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Text(
                        '按揭比例',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        '90%(270萬)',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 1,),
                GestureDetector(
                  onTap: () {
                    _showPicker(
                      CupertinoPicker(
                      magnification: 1.22,
                      squeeze: 1.2,
                      useMagnifier: true,
                      itemExtent: 32.0,
                      scrollController: FixedExtentScrollController(
                        initialItem: _selectedTerms,
                      ),
                      onSelectedItemChanged: (int selectedItem) {
                        setState(() {
                          _selectedTerms = selectedItem;
                        });
                      },
                      children: List<Widget>.generate(terms.length, (int index) {
                        return Center(
                          child: Text(terms[index]),
                        );
                      }),
                    ),
                    );
                  },
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        const Text(
                          '按揭還款期',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 15,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '${terms[_selectedTerms]}',
                          style: const TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 15,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 1,),
                Container(
                  height: 56,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: const Row(
                    children: [
                      Text(
                        '按揭年息',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 60,
                        child: TextField(
                          textAlign: TextAlign.end,
                          obscureText: false,
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '2.5',
                            hintStyle: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 18,
                              fontFamily: 'PingFang TC',
                              fontWeight: FontWeight.w400,
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 18,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: 7,),
                      Text(
                        '%',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4,),
                  child: const Text(
                    '印花稅',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showPicker(
                      CupertinoPicker(
                        magnification: 1.22,
                        squeeze: 1.2,
                        useMagnifier: true,
                        itemExtent: 32,
                        scrollController: FixedExtentScrollController(
                          initialItem: _selectedTax,
                        ),
                        onSelectedItemChanged: (int selectedItem) {
                          setState(() {
                            _selectedTax = selectedItem;
                          });
                        },
                        children: List<Widget>.generate(taxIn.length, (int index) {
                          return Center(
                            child: Text(taxIn[index]),
                          );
                        }),
                      ),
                    );
                  },
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        const Text(
                          '樓盤價格',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 15,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '${taxIn[_selectedTax]}',
                          style: const TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 15,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 24,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 1,),
                Container(
                  height: 56,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Text(
                        '買家印花稅',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Switch(
                        // This bool value toggles the switch.
                        value: light,
                        activeColor: const Color(0xFF50C5D5),
                        onChanged: (bool value) {
                          // This is called when the user toggles the switch.
                          setState(() {
                            light = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4,),
                  child: const Text(
                    '*非香港居民或以公司名義購入(稅率劃ㄧ為15%)。只用於住宅業務。',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  height: 56,
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Text(
                        '雙倍印花稅',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 15,
                          fontFamily: 'PingFang TC',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Switch(
                        // This bool value toggles the switch.
                        value: light,
                        activeColor: const Color(0xFF50C5D5),
                        onChanged: (bool value) {
                          // This is called when the user toggles the switch.
                          setState(() {
                            light = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4,),
                  child: const Text(
                    '*非首次置業買家（包括住宅、工商舖及單位），印花稅大概是原有的雙倍',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF50C5D5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('開始計算'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
