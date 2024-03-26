import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/common/theme/theme.dart';
import 'package:team_5_motionhack/ui/consultant/consultant_page.dart';
import 'package:team_5_motionhack/ui/consultant/konfirmasi.dart';
import 'package:team_5_motionhack/ui/consultant/pembayaran.dart';
import 'package:team_5_motionhack/ui/consultant/profilKonsultan.dart';
import 'package:team_5_motionhack/ui/history/history_page.dart';
import 'package:team_5_motionhack/ui/history/history_pengajuan.dart';
import 'package:team_5_motionhack/ui/registration/registration_page.dart';
import 'package:team_5_motionhack/ui/splash/splash_page.dart';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:team_5_motionhack/ui/consultant//konsultasiChat.dart';
import 'package:team_5_motionhack/ui/home/Chat.dart';
import 'package:team_5_motionhack/ui/home/notifikasi.dart';
import 'package:team_5_motionhack/ui/investment/profile_investor.dart';
import 'package:team_5_motionhack/ui/investment/list_page.dart';

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
        home: InvestorListPage(),
      ),
    );
  }
}
