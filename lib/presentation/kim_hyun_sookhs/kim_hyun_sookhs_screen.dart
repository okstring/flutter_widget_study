import 'package:flutter/material.dart';

class KimHyunSookhsScreen extends StatefulWidget {
  const KimHyunSookhsScreen({super.key});

  @override
  State<KimHyunSookhsScreen> createState() => _KimHyunSookhsScreenState();
}

class _KimHyunSookhsScreenState extends State<KimHyunSookhsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Center(child: Text('KimHyunSookhs'))));
  }
}
