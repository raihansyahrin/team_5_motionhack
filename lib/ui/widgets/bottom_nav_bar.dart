import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:team_5_motionhack/common/styles/colors.dart';
import 'package:team_5_motionhack/ui/consultant/consultant_page.dart';
import 'package:team_5_motionhack/ui/history/history_page.dart';
import 'package:team_5_motionhack/ui/home/home_page.dart';
import 'package:team_5_motionhack/ui/investment/investment_page.dart';
import 'package:team_5_motionhack/ui/profile/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  final int initialPage;
  const BottomNavBar({
    super.key,
    this.initialPage = 0,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialPage;
  }

  final List<Widget> _pages = [
    const HomePage(),
    const InvestmentPage(),
    const ConsultantPage(),
    const HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed, // Tidak ada animasi membesar
        enableFeedback: false,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF00584B),
        unselectedItemColor: Colors.grey,

        selectedIconTheme: const IconThemeData(
          color: Colors.green,
          fill: 0.9,
        ),
        selectedLabelStyle: const TextStyle(height: 2.5, fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12, height: 2.5),
        backgroundColor: const Color.fromARGB(255, 116, 247, 143),

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home_navbar.svg'),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/investasi_navbar.svg'),
            label: 'Investasi',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/consultant_navbar.svg'),
            label: 'Konsultasi',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/history_navbar.svg'),
            label: 'Riwayat',
          ),
        ],
      ),
    );
  }
}
