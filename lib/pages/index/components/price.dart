import 'package:flutter/material.dart';

class PriceWidget extends StatefulWidget {
  final ValueChanged<Map<String, String>> onConfirmed;

  const PriceWidget({super.key, required this.onConfirmed});

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  RangeValues _currentRangeValues = const RangeValues(5000, 15000);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-170,
      width: double.infinity,
      color: const Color(0xFFF5F6F7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '價格範圍\$0 - 無限',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 115,
                          height: 37,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFBFBFB),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFEBEBEB),
                              ),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '\$${_currentRangeValues.start.round()}',
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 18,
                                fontFamily: 'PingFang TC',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 15,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFEBEBEB),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 115,
                            height: 37,
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFBFBFB),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFFEBEBEB),
                                ),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  _currentRangeValues.end.round() > 80000 ? '無限' :'\$${_currentRangeValues.end.round()}',
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 18,
                                    fontFamily: 'PingFang TC',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    // 隱藏滑塊操作時的數字標籤
                    showValueIndicator: ShowValueIndicator.never,
                    thumbShape: CustomSliderThumbImage(
                      thumbRadius: 20,
                      imageProvider: const AssetImage('assets/images/thumb.png'), // 或使用 SvgPicture.asset('assets/your_icon.svg').image
                    ),
                    // 可選，自定義其他屬性，例如滑塊的顏色
                    activeTrackColor: const Color(0xFF50C5D5), // 滑動條激活部分的顏色
                    inactiveTrackColor: Colors.grey, // 滑動條非激活部分的顏色
                    thumbColor: const Color(0xFF50C5D5), // 滑塊的顏色
                    overlayColor: const Color(0xFF50C5D5).withAlpha(32), // 滑塊外圍顯示的顏色
                  ),
                  child: RangeSlider(
                    values: _currentRangeValues,
                    min: 0,
                    max: 80100,
                    divisions: 801,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values; // 更新範圍值
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10,),
              ],
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
                    onTap: () {},
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
                  child: GestureDetector(
                    onTap: () {
                      Map<String, String> priceRange= {
                        'min_rent': '${_currentRangeValues.start.round()}',
                        'max_rent': '${_currentRangeValues.end.round()}',
                      };
                      widget.onConfirmed(priceRange);
                    },
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
                        '確定',
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliderThumbImage extends SliderComponentShape {
  final double thumbRadius;
  final ImageProvider imageProvider;

  CustomSliderThumbImage({required this.thumbRadius, required this.imageProvider});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow}) {
    final ImageConfiguration imageConfig = ImageConfiguration(size: Size.fromRadius(thumbRadius));
    final ImageStream imageStream = imageProvider.resolve(imageConfig);
    final ImageStreamListener listener = ImageStreamListener((ImageInfo image, bool synchronousCall) {
      final imageOffset = Offset(
        center.dx - (image.image.width / 2),
        center.dy - (image.image.height / 2),
      );
      paintImage(
          canvas: context.canvas,
          rect: Rect.fromLTWH(imageOffset.dx, imageOffset.dy, image.image.width.toDouble(), image.image.height.toDouble()),
          image: image.image,
          fit: BoxFit.fill);
    });

    imageStream.addListener(listener);
    imageStream.removeListener(listener);
  }
}
