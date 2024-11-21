import 'package:flutter/material.dart';

class FunctionWidget2 extends StatefulWidget {
  const FunctionWidget2({super.key});

  @override
  State<FunctionWidget2> createState() => _FunctionWidgetState();
}

class _FunctionWidgetState extends State<FunctionWidget2> {
  final List<String> function = ['全部', '住宅', '車位', '工商', '店鋪', '土地'];
  final List<List<String>> functionChild = [
    [],
    ['全部', '私人屋苑', '居屋', '村屋', '獨立屋', '公屋', '唐樓', '洋樓', '單幢式大廈',],
    ['全部', '電單車位', '貨車車位', '工商車位', '住宅車位',],
    ['全部', '工商大廈', '寫字樓',],
    ['全部', '商場舖位', '樓上舖', '地鋪', '生意頂讓',],
    ['全部', '私人住宅土地', '村屋土地', '農地', '倉地', '貨倉', '康樂地',],
  ];
  late List<List<bool>> selectedFuncChild = [];

  int _selectedFunc = 0;

  @override
  void initState() {
    super.initState();
    selectedFuncChild = functionChild.map((childList) => List<bool>.generate(childList.length, (index) => index == 0)).toList();
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(function.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedFunc = index;
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              height: 36,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10,),
                              decoration: BoxDecoration(
                                gradient: _selectedFunc == index ? const LinearGradient(
                                  begin: Alignment(0.99, -0.16),
                                  end: Alignment(-0.99, 0.16),
                                  colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                ) : null,
                                border: index < function.length-1
                                    ? const Border(
                                  bottom: BorderSide(
                                    color: Color(0xFFB3B3B3),
                                    width: 1,
                                  ),
                                )
                                    : null,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    function[index],
                                    style: TextStyle(
                                      color: _selectedFunc == index ? Colors.white : null,
                                      fontSize: 16,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 30,),
                                  Icon(
                                    size: 16,
                                    color: _selectedFunc == index ? Colors.white : null,
                                    _selectedFunc == index ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(functionChild[_selectedFunc].length, (index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // _selectedAreaChild = index;
                                    selectedFuncChild[_selectedFunc][index] = !selectedFuncChild[_selectedFunc][index];
                                  });
                                },
                                child: Container(
                                  height: 36,
                                  padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10,),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    // color: _selectedAreaChild == index ? Color(0xFF50C5D5) : null,
                                    gradient: selectedFuncChild[_selectedFunc][index] ? const LinearGradient(
                                      begin: Alignment(0.99, -0.16),
                                      end: Alignment(-0.99, 0.16),
                                      colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                    ) : null,
                                    border: index < functionChild[_selectedFunc].length-1
                                        ? const Border(
                                      bottom: BorderSide(
                                        color: Color(0xFFB3B3B3),
                                        width: 1,
                                      ),
                                    )
                                        : null,
                                  ),
                                  child: Text(
                                    functionChild[_selectedFunc][index],
                                    style: TextStyle(
                                      color: selectedFuncChild[_selectedFunc][index] ? Colors.white : null,
                                      fontSize: 16,
                                      fontFamily: 'Noto Sans TC',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ),
                ],
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
