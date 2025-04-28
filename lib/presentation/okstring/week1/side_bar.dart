import 'package:flutter/material.dart';
import 'package:flutter_widget_study/presentation/okstring/week1/side_bar_inherited.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        backgroundColor: Colors.white,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('사이드 바 닫기'),
                onTap: () {
                  SidebarState.of(context).close();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}