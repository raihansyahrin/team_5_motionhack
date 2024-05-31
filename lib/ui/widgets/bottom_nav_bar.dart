import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/theme/font.dart';

import '../consultant/consultant_page.dart';
import '../history/history_page.dart';
import '../home/home_page.dart';
import '../investment/investment_page.dart';

class BottomNavBar extends StatefulWidget {
  final int initialPage;
  final bool isSubmitProposal;

  const BottomNavBar({
    super.key,
    this.initialPage = 0,
    this.isSubmitProposal = false,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // late int _currentIndex;
  // late bool _proposal;

  // @override
  // void initState() {
  //   super.initState();
  //   _currentIndex = widget.initialPage;
  //   _proposal = widget.isSubmitProposal;
  // }

  // final List<Widget> _pages = [
  //   const HomePage(),
  //   InvestmentPage(
  //     isSubmitProposal: _proposal,
  //   ),
  //   const ConsultantPage(),
  //   const HistoryPage(),
  // ];
  late int _currentIndex;
  late bool _proposal;
  late List<Widget> _pages; // Move _pages declaration here

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialPage;
    _proposal = widget.isSubmitProposal;
    _pages = [
      const HomePage(),
      InvestmentPage(
        isSubmitProposal: _proposal,
      ),
      const ConsultantPage(),
      const HistoryPage(),
    ];
  }

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
        showSelectedLabels: true,
        selectedLabelStyle: lightText12.copyWith(
          height: 2.5,
        ),
        unselectedLabelStyle: lightText12.copyWith(
          height: 2.5,
        ),
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? SvgPicture.asset('assets/icons/home_active.svg')
                : SvgPicture.asset('assets/icons/home_navbar.svg'),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? SvgPicture.asset('assets/icons/investment_active.svg')
                : SvgPicture.asset('assets/icons/investasi_navbar.svg'),
            label: 'Investasi',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? SvgPicture.asset('assets/icons/consult_active.svg')
                : SvgPicture.asset('assets/icons/consultant_navbar.svg'),
            label: 'Konsultasi',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? SvgPicture.asset('assets/icons/history_active.svg')
                : SvgPicture.asset('assets/icons/history_navbar.svg'),
            label: 'Riwayat',
          ),
        ],
      ),
    );
  }
}
