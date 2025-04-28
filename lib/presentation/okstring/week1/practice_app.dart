import 'package:flutter/material.dart';
import 'package:flutter_widget_study/presentation/okstring/week1/app_scaffold.dart';

import 'side_bar_inherited.dart';

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Practice App'),

            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                SidebarState.of(context).isOpen
                    ? SidebarState.of(context).close()
                    : SidebarState.of(context).open();
              },
              child:
                  SidebarState.of(context).isOpen
                      ? Text('사이드 바 닫기')
                      : Text('사이드 바 열기'),
            ),
          ],
        ),
      ),
    );
  }
}
