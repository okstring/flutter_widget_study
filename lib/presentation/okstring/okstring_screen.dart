import 'package:flutter/material.dart';

class OkstringScreen extends StatefulWidget {
  const OkstringScreen({super.key});

  @override
  State<OkstringScreen> createState() => _OkstringScreenState();
}

class _OkstringScreenState extends State<OkstringScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Center(child: Text('okstring'))));
  }
}
