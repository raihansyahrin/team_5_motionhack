import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/common/theme/theme.dart';
import 'package:team_5_motionhack/ui/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Team 5',
        theme: themeData,
        home: const SplashPage(),
      ),
    );
  }
}
