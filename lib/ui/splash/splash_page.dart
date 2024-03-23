import 'package:flutter/material.dart';
import 'package:team_5_motionhack/ui/widgets/bottom_nav_bar.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Splash Page',
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavBar(
                  initialPage: 0,
                ),
              ),
            );
          },
          child: const Text('Team 5 bismillah'),
        ),
      ),
    );
  }
}
