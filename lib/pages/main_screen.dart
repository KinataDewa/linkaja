import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:linkaja_clone/pages/account_page.dart';
import 'package:linkaja_clone/pages/history_page.dart';
import 'package:linkaja_clone/pages/home_page.dart';
import 'package:linkaja_clone/pages/inbox_page.dart';
import 'package:linkaja_clone/pages/pay_page.dart';
import '../core/textstyle.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const PayPage(),
    const InboxPage(),
    const AccountPage()
  ];

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        selectedLabelStyle: regularTS.copyWith(fontSize: 12),
        unselectedItemColor: Colors.black54,
        unselectedLabelStyle: regularTS.copyWith(fontSize: 12),
        currentIndex: currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.home_2),
            activeIcon: Icon(IconsaxPlusBold.home_2),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.timer_1),
            activeIcon: Icon(IconsaxPlusBold.timer_1),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.scan_barcode),
            activeIcon: Icon(IconsaxPlusBold.scan_barcode),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.brifecase_tick),
            activeIcon: Icon(IconsaxPlusBold.brifecase_tick),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.profile_circle),
            activeIcon: Icon(IconsaxPlusBold.profile_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
