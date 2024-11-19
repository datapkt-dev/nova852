import 'package:flutter/material.dart';

class FunctionWidget2 extends StatefulWidget {
  const FunctionWidget2({super.key});

  @override
  State<FunctionWidget2> createState() => _FunctionWidgetState();
}

class _FunctionWidgetState extends State<FunctionWidget2> {
  final List<String> function = ['全部用途', '住宅', '寫字樓', '工廠大廈', '全部用途', '住宅'];
  List<bool> checked = [];

  @override
  void initState() {
    super.initState();
    checked = List.generate(function.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height - 180,
        color: const Color(0xFFF2F2F2),
        child: Column(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 8,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3FC9C9C9),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  children: List.generate(function.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 16,
                            height: 16,
                            child: Checkbox(
                              value: checked[index],
                              activeColor: const Color(0xFF07A1B4),
                              onChanged: (bool? value) {
                                setState(() {
                                  checked[index] = value!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            function[index],
                            style: const TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 16,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3FC9C9C9),
                      blurRadius: 4,
                      offset: Offset(0, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            checked = List.generate(function.length, (index) => false);
                          });
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFB3B3B3),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          ),
                          child: const Text(
                            '重設',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Noto Sans TC',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.99, -0.16),
                            end: Alignment(-0.99, 0.16),
                            colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '確定 (7,623個樓盤)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
