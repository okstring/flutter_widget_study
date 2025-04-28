import 'package:flutter/material.dart';
import 'package:flutter_widget_study/presentation/dansot4891/dansot4891_screen.dart';
import 'package:flutter_widget_study/presentation/doggodking/doggodking_screen.dart';
import 'package:flutter_widget_study/presentation/kim_hyun_sookhs/kim_hyun_sookhs_screen.dart';
import 'package:flutter_widget_study/presentation/okstring/okstring_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const KimHyunSookhsScreen(),
    const Dansot4891Screen(),
    OkstringScreen(),
    const DoggodkingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        indicatorColor: Colors.amber,
        selectedIndex: _selectedIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'KimHyunSookhs',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Dansot4891',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'okstring',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'doggodking',
          ),
        ],
      ),
    );
  }
}