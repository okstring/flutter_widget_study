import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skeletonizer',
      theme: ThemeData(extensions: const [SkeletonizerConfigData()]),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        extensions: const [SkeletonizerConfigData.dark()],
      ),
      home: const SkeletonizerDemoPage(),
    );
  }
}


class SkeletonizerDemoPage extends StatefulWidget {
  const SkeletonizerDemoPage({super.key});

  @override
  State<SkeletonizerDemoPage> createState() => _SkeletonizerDemoPageState();
}

class _SkeletonizerDemoPageState extends State<SkeletonizerDemoPage> {
  bool _enabled = true;

  @override
  void initState() {
    super.initState();
    // 앱이 시작하고 3초 후에 skeleton 끄기
    Timer(const Duration(seconds: 3), () {
      setState(() {
        _enabled = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skeletonizer')),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 0, right: 4),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 110),
          child: FloatingActionButton(
            child: Icon(
              _enabled
                  ? Icons.hourglass_bottom_rounded
                  : Icons.hourglass_disabled_outlined,
            ),
            onPressed: () {
              setState(() {
                _enabled = !_enabled;
              });
            },
          ),
        ),
      ),
      body: Skeletonizer(
        enabled: _enabled,
        enableSwitchAnimation: true,
        //ignoreContainers: true, // container 안 보이게 처리
        child: ListView.builder(
          itemCount: 6,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('Item number $index as title'),
                subtitle: Text('subtitle'),
                leading: Skeleton.replace(
                  width: 48,
                  height: 48,
                  child: Icon(Icons.person)
                ),
                trailing: Skeleton.keep(
                  //skeleton 화면 적용하지 않음
                  child: const Icon(Icons.ac_unit, size: 32),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
