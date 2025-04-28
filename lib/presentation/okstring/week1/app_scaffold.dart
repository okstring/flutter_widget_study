import 'package:flutter/material.dart';

import 'side_bar.dart';
import 'side_bar_inherited.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;

  const AppScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // 상태 변화를 감지
    final sidebarNotifier = SidebarState.of(context);
    final isSidebarOpen = sidebarNotifier.isOpen;

    return Scaffold(
      body: Stack(
        children: [child, if (isSidebarOpen) const SideBar()],
      ),
    );
  }
}
