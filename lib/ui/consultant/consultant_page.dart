import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/bottom_nav_bar.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';

class ConsultantPage extends StatelessWidget {
  const ConsultantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(padding: EdgeInsets.symmetric(vertical: 125),
            child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daftar Konsultan",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Outfit',
                    ),
                  ),
                  SizedBox(height: 32,),
                  SingleChildScrollView(
                    child: Column(
                        children : [
                          BannerKonsultasi(),
                          BannerKonsultasi(),
                          BannerKonsultasi(),
                          BannerKonsultasi(),
                        ]
                    )
                  )
                ]
            )
        ),
      ),
      // kurang bottom nav bar
    );
  }
}







