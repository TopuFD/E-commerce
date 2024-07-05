import 'package:flutter/material.dart';
import 'package:full_ecommerce/screens/navigation_page/activity_page.dart';
import 'package:full_ecommerce/screens/navigation_page/chatt_page.dart';
import 'package:full_ecommerce/screens/navigation_page/home_screen.dart';
import 'package:full_ecommerce/screens/navigation_page/setting_page.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  var _selectedIndex = 0;
  List navPage = [
    const HomeScreen(),
    const ActivityPage(),
    const ChattPage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ResponsiveNavigationBar(
        selectedIndex: _selectedIndex,
        onTabChange: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        backgroundColor: Colors.white,
        inactiveIconColor: const Color(0xFF979797),
        activeIconColor: const Color(0xFF5048A9),
        navigationBarButtons: const [
          NavigationBarButton(
              backgroundColor: Colors.black12, text: 'Home', icon: Icons.home),
          NavigationBarButton(
              backgroundColor: Colors.black12,
              text: 'Activities',
              icon: Icons.timer),
          NavigationBarButton(
              backgroundColor: Colors.black12,
              text: 'Chatts',
              icon: Icons.message),
          NavigationBarButton(
              backgroundColor: Colors.black12,
              text: 'Settings',
              icon: Icons.settings),
        ],
      ),
      body: navPage[_selectedIndex],
    );
  }
}
