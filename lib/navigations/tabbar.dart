import 'package:flutter/material.dart';
import 'package:calc_app/screens/home_page.dart';
import 'package:calc_app/screens/login_page.dart';
import 'package:calc_app/screens/calculator_page.dart';
import 'package:calc_app/screens/settings_page.dart';
class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate), label: "Calculator"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Login"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
      body: Stack(
        children: [
          renderPage(0, const HomePage()),
          renderPage(1, const CalcPage()),
          renderPage(2, const LoginPage()),
          renderPage(3, const SettingsPage()),
        ],
      ),
    );
  }

  Widget renderPage(int tabIndex, Widget page) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: page,
      ),
    );
  }
}
