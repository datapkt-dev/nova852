import 'package:flutter/material.dart';

class StepOne extends StatefulWidget {
  const StepOne({super.key});

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  String? _selectedValue;
  final List<String> _options = ['+ 852', '+ 853', '+ 854'];

  @override
  void initState() {
    super.initState();
    _selectedValue = _options.isNotEmpty ? _options[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.symmetric(horizontal: 40,),
      child: Column(
        children: [
          const SizedBox(height: 30,),
          const Text(
            '會員登入',
            style: TextStyle(
              fontFamily: 'Noto Sans TC',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 30,),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '電話號碼',
              style: TextStyle(
                color: Color(0xFF6D6D6D),
                fontFamily: 'Noto Sans TC',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF171717),),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: DropdownButton(
                  value: _selectedValue,
                  // isExpanded: true,
                  underline: SizedBox.shrink(),
                  items: _options.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                          color: Color(0xFF6D6D6D),
                          fontFamily: 'Noto Sans TC',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF171717),),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '9824 8232',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: () {

            },
            child: Container(
              width: double.infinity,
              height: 38,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.99, -0.16),
                  end: Alignment(-0.99, 0.16),
                  colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              ),
              child: Text(
                '獲取一次性密碼',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Noto Sans TC',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}