import 'package:flutter/material.dart';
import 'package:flutter_widget_study/presentation/okstring/week1/side_bar_inherited.dart';
import 'package:flutter_widget_study/presentation/okstring/week1/practice_app.dart';

class OkstringScreen extends StatefulWidget {
  final _sidebarNotifier = SidebarNotifier();

  OkstringScreen({super.key});

  @override
  State<OkstringScreen> createState() => _OkstringScreenState();
}

class _OkstringScreenState extends State<OkstringScreen> {
  @override
  Widget build(BuildContext context) {
    return SidebarState(
      notifier: widget._sidebarNotifier,
      child: PracticeApp(),
    );
  }
}
