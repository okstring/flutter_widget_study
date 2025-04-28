import 'package:flutter/material.dart';
import 'package:flutter_widget_study/presentation/kim_hyun_sookhs/week1/skeletonizer_demo_page.dart';

class KimHyunSookhsScreen extends StatefulWidget {
  const KimHyunSookhsScreen({super.key});

  @override
  State<KimHyunSookhsScreen> createState() => _KimHyunSookhsScreenState();
}

class _KimHyunSookhsScreenState extends State<KimHyunSookhsScreen> {
  @override
  Widget build(BuildContext context) {
    return SkeletonizerDemoPage();
  }
}
