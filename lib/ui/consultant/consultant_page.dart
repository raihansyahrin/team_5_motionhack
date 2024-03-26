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
import 'package:flutter_svg/flutter_svg.dart';

class ConsultantPage extends StatelessWidget {
  const ConsultantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(vertical: 125, horizontal: 22),
            child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daftar Konsultan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Outfit',
                    ),
                  ),
                  SingleChildScrollView(
                      child: Column(
                          children : [
                            SizedBox(height: 32,),
                            BannerKonsultasi(nama: 'Franco', posisi: 'Konsultan Keuangan', pic: 'assets/PPic.svg',),
                            BannerKonsultasi(nama: 'Jason', posisi: 'Konsultan Pemasaran', pic: 'assets/PPic.svg',),
                            BannerKonsultasi(nama: 'Imelda', posisi: 'Konsultan Pemasaran', pic: 'assets/PPic.svg',),
                            BannerKonsultasi(nama: 'Lydia', posisi: 'Konsultan Bisnis Umum', pic: 'assets/PPic.svg',),
                            BannerKonsultasi(nama: 'Franco', posisi: 'Konsultan Legal', pic: 'assets/PPic.svg',),
                            BannerKonsultasi(nama: 'Franco', posisi: 'Konsultan Manajemen Resiko', pic: 'assets/PPic.svg',),
                            BannerKonsultasi(nama: 'Franco', posisi: 'Konsultan Legal', pic: 'assets/PPic.svg',),
                          ]
                      )
                  )
                ]
            ),
          )
        )
        ),
      // kurang bottom nav bar
    );
  }
}







