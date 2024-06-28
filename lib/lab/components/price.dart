import 'package:flutter/material.dart';

class PriceWidget extends StatefulWidget {
  const PriceWidget({super.key});

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  RangeValues _currentRangeValues = const RangeValues(50000, 150000);
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight= MediaQuery.of(context).size.height;
    // double hScale = screenHeight/852;
    // double wScale = screenWidth/393;

    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '價格範圍\$62萬-\$2億',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 15,
                fontFamily: 'PingFang TC',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10,),
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
                      color: Color(0xFFFBFBFB),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
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
                        style: TextStyle(
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 15,
                      decoration: ShapeDecoration(
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
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 115,
                          height: 37,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: ShapeDecoration(
                            color: Color(0xFFFBFBFB),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
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
                                '\$${_currentRangeValues.end.round()}',
                                textAlign: TextAlign.right,
                                style: TextStyle(
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
                        Text(
                          '萬',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 15,
                            fontFamily: 'PingFang TC',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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
                activeTrackColor: Color(0xFF50C5D5), // 滑動條激活部分的顏色
                inactiveTrackColor: Colors.grey, // 滑動條非激活部分的顏色
                thumbColor: Color(0xFF50C5D5), // 滑塊的顏色
                overlayColor: Color(0xFF50C5D5).withAlpha(32), // 滑塊外圍顯示的顏色
              ),
              child: RangeSlider(
                values: _currentRangeValues,
                min: 0,
                max: 200000,
                divisions: 200000,
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
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 16),
                decoration: ShapeDecoration(
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
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: Color(0xFFB3B3B3),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          ),
                          child: Text(
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
                    SizedBox(width: 15,),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.99, -0.16),
                            end: Alignment(-0.99, 0.16),
                            colors: [Color(0xFF07A1B4), Color(0xFF77D1D7)],
                          ),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
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
        )
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
    imageStream.removeListener(listener); // You might need a better way to manage the listener's lifecycle
  }
}
