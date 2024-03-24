import 'dart:async';
import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/styles/colors.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/data/local/preferences_utils.dart';
import 'package:team_5_motionhack/ui/widgets/bottom_nav_bar.dart';

import '../login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    PreferencesUtils prefs = PreferencesUtils();
    bool isFirstTime = await prefs.getIsFirstTime();
    // bool isGuest = await prefs.getIsGuest();
    String userToken = await prefs.getUserToken();

    var duration = const Duration(seconds: 3);
    return Timer(
      duration,
      () {
        Navigator.pop(context);
        if (isFirstTime) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
          );
        } else {
          if (userToken.isEmpty) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavBar(),
              ),
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 71, 85, 239),
        ),
        child: Center(
          child: Text(
            'Splash Screen',
            style: boldText24.copyWith(
              color: kColorScheme.background,
            ),
          ),
        ),
      ),
    );
  }
}
