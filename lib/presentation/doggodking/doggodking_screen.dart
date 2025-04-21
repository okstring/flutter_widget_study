import 'package:flutter/material.dart';

class DoggodkingScreen extends StatefulWidget {
  const DoggodkingScreen({super.key});

  @override
  State<DoggodkingScreen> createState() => _DoggodkingScreenState();
}

class _DoggodkingScreenState extends State<DoggodkingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Center(child: Text('doggodking'))));
  }
}
