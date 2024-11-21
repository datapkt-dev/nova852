import 'package:flutter/material.dart';

class AreaWidget2 extends StatefulWidget {
  const AreaWidget2({super.key});

  @override
  State<AreaWidget2> createState() => _AreaWidgetState();
}

class _AreaWidgetState extends State<AreaWidget2> {
  int _selectedZone = 0;
  int _selectedArea = 0;
  // int _selectedAreaChild = 0;
  bool _showArea = true;

  final List<String> zone = ['地區', '港鐵',];
  final List<String> area = ['港島', '九龍', '新界',];
  final List<List<String>> areaChild = [
    ['全港島', '中西區', '灣仔區', '東區', '南區'],
    ['全九龍', '油尖旺區', '深水埗區', '九龍城區', '黃大仙區', '觀塘區'],
    ['全新界', '葵青區', '荃灣區', '元朗區', '屯門區', '北區', '大埔區', '沙田區', '西貢區', '離島區',],
  ];
  late List<List<bool>> selectedAreaChild = [];

  @override
  void initState() {
    super.initState();
    selectedAreaChild = areaChild.map((childList) => List<bool>.generate(childList.length, (index) => index == 0)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-180,
      color: const Color(0xFFF5F6F7),
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
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFB3B3B3),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: List.generate(zone.length, (index) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedArea = index;
                          if (index == 0) {
                            _showArea = true;
                          } else {
                            _showArea = false;
                          }
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: _selectedArea == index ? const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF07A1B4),
                              width: 2,
                            ),
                          ),
                        ) : null,
                        child: Text(
                          zone[index],
                          style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'Noto Sans TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 28,)
                  ],
                );
              }),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Visibility(
                    visible: _showArea,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(area.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedZone = index;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 36,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10,),
                            decoration: BoxDecoration(
                              gradient: _selectedZone == index ? const LinearGradient(
                                begin: Alignment(0.99, -0.16),
                                end: Alignment(-0.99, 0.16),
                                colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                              ) : null,
                              border: index < area.length-1
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
                                  area[index],
                                  style: TextStyle(
                                    color: _selectedZone == index ? Colors.white : null,
                                    fontSize: 16,
                                    fontFamily: 'Noto Sans TC',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 30,),
                                Icon(
                                  size: 16,
                                  color: _selectedZone == index ? Colors.white : null,
                                  _selectedZone == index ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Visibility(
                    visible: _showArea,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(areaChild[_selectedZone].length, (index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  // _selectedAreaChild = index;
                                  selectedAreaChild[_selectedZone][index] = !selectedAreaChild[_selectedZone][index];
                                });
                              },
                              child: Container(
                                height: 36,
                                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10,),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  // color: _selectedAreaChild == index ? Color(0xFF50C5D5) : null,
                                  gradient: selectedAreaChild[_selectedZone][index] ? const LinearGradient(
                                    begin: Alignment(0.99, -0.16),
                                    end: Alignment(-0.99, 0.16),
                                    colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                                  ) : null,
                                  border: index < areaChild[_selectedZone].length-1
                                      ? const Border(
                                    bottom: BorderSide(
                                      color: Color(0xFFB3B3B3),
                                      width: 1,
                                    ),
                                  )
                                      : null,
                                ),
                                child: Text(
                                  areaChild[_selectedZone][index],
                                  style: TextStyle(
                                    color: selectedAreaChild[_selectedZone][index] ? Colors.white : null,
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
                      onTap: (){
                        setState(() {
                          _selectedZone = 0;
                          _selectedArea = 0;
                          _showArea = true;
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
              )
          ),
        ],
      ),
    );
  }
}
