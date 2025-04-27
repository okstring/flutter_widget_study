import 'package:flutter/material.dart';

class Dansot4891Screen extends StatefulWidget {
  const Dansot4891Screen({super.key});

  @override
  State<Dansot4891Screen> createState() => _Dansot4891ScreenState();
}

class _Dansot4891ScreenState extends State<Dansot4891Screen> {
  // ‼️ IntrinsicHeight, IntrinsicWidth 사용 안하는걸 추천..
  // => 비용이 많이 듦
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // UnconstrainedBox: 부모 제약 조건 강제 해제
              // -> 솔직히 언제 쓰일지 모르겠다..
              UnconstrainedBox(
                child: Container(
                  color: Colors.amber,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      exBox2(text: 'asdfasdf'),
                      exBox2(text: 'asddf'),
                      exBox2(text: 'af'),
                    ],
                  ),
                ),
              ),
              IntrinsicHeight(
                // IntrinsicHeight: 내부 위젯들 중 가장 긴 높이가 기준이 됨.
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // 내부 위젯들을 부모 크기만큼 늘리기 (교차축)
                  // 해당 코드가 있어야 IntrinsicHeight가 정상적으로 작동함
                  // => Row의 높이는 100으로 고정이 되지만
                  //    내부 위젯을 각각 30, 50으로 설정해줬기 때문에
                  //    해당 위젯들의 높이가 늘어나지 않음
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    exBox(color: Colors.red, width: 100, height: 50),
                    exBox(color: Colors.blue, width: 100, height: 100),
                    exBox(color: Colors.green, width: 100, height: 30),
                  ],
                ),
              ),
              // IntrinsicWidth: 내부 위젯들 중 가장 긴 너비가 기준이 됨.
              IntrinsicWidth(
                child: Column(
                  // 내부 위젯들을 부모 크기만큼 늘리기 (교차축)
                  // 해당 코드가 있어야 IntrinsicWidth가 정상적으로 작동함
                  // => Column의 너비는 100으로 고정이 되지만
                  //    내부 위젯을 각각 30, 50으로 설정해줬기 때문에
                  //    해당 위젯들의 너비가 늘어나지 않음
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    exBox(color: Colors.purple, width: 50, height: 150),
                    exBox(color: Colors.pink, width: 100, height: 150),
                    exBox(color: Colors.blue, width: 30, height: 150),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget exBox({
    String text = 'Example',
    double? width,
    double? height,
    Color? color,
  }) {
    return Container(
      color: color,
      width: width,
      height: height,
      // 강제로 최소 너비/높이 제한
      // constraints: BoxConstraints(
      //   minHeight: 130,
      //   minWidth: 130,
      //   maxHeight: 500,
      //   maxWidth: 500,
      // ),
      // child: UnconstrainedBox(
      //   child: SizedBox(width: 50, height: 900, child: const Text('Example')),
      // ),
      // child: OverflowBox(
      //   child: SizedBox(width: 50, height: 900, child: const Text('Example')),
      // ),
      child: Text(text),
    );
  }

  Widget exBox2({String text = 'test'}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all()),
      child: Text(text),
    );
  }
}
