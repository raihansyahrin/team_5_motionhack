import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/styles/colors.dart';
import 'package:team_5_motionhack/ui/consultant/consultant_page.dart';
import 'package:team_5_motionhack/ui/history/history_page.dart';
import 'package:team_5_motionhack/ui/investor/investor_page.dart';
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
    const InvestorPage(),
    const ConsultantPage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: _currentIndex,
        selectedItemColor: kColorScheme.primary,
        unselectedItemColor: kColorScheme.primary,
        unselectedLabelStyle: TextStyle(color: kColorScheme.primary),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Job Saya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
