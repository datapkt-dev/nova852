import 'package:flutter/material.dart';
import 'package:nova852/lab/components/function.dart';
import 'package:nova852/lab/components/more.dart';

class T1Page extends StatefulWidget {
  const T1Page({super.key});

  @override
  State<T1Page> createState() => _T1PageState();
}

class _T1PageState extends State<T1Page> {

  bool _showA = false;
  bool _showB = false;
  final List<int> items = List<int>.generate(100, (i) => i + 1);
  bool _isOverlayVisible = false;



  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Lab"),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('項目 ${items[index]}'),
              );
            },
          ),
          if (_isOverlayVisible) ...[
            ModalBarrier(
              color: Colors.black54, // 暗色遮罩
              dismissible: true, // 點擊遮罩是否可以關閉Overlay
              onDismiss: () {
                setState(() {
                  _isOverlayVisible = false;
                  _showB= !_showB; // 切換 ContainerA 的顯示狀態
                });
              },
            ),
          ],
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isOverlayVisible = !_isOverlayVisible; // 切換遮罩顯示狀態
                        _showB= !_showB; // 切換 ContainerA 的顯示狀態
                      });
                    },
                    child: const Text('Button1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _showA = false;
                        _isOverlayVisible = !_isOverlayVisible; // 切換遮罩顯示狀態
                        _showB = !_showB; // 切換 ContainerB 的顯示狀態
                      });
                    },
                    child: Text('Button2'),
                  ),
                ],
              ),
              if (_showA) MoreWidget(), // 根據狀態顯示 ContainerA
              if (_showB) FunctionWidget(),
            ],
          ),
        ],
      ),
    );
  }
}