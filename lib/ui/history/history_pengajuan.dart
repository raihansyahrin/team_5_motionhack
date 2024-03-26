import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:team_5_motionhack/ui/widgets/banner_history.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/header_navigator.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';

class HistoryPengajuan extends StatelessWidget {
  const HistoryPengajuan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 100, bottom: 25, left: 21, right: 21),
            child: Column(
              children: [
                Header(kiri: true, kanan: false, namaKanan: 'Konsultasi', namaKiri: 'Pengajuan',),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      BannerHistory(nama: 'Konsultasi', pic: 'assets/icons/konsultasi_icon.svg', posisi: '5 April 2024, 12.00', pengajuan: true, terima: true,),
                      BannerHistory(nama: 'Konsultasi', pic: 'assets/icons/konsultasi_icon.svg', posisi: '5 April 2024, 12.00', pengajuan: true, terima: false,),
                      BannerHistory(nama: 'Laporan Mingguan', pic: 'assets/icons/konsultasi_icon.svg', posisi: '5 April 2024, 12.00', pengajuan: false, terima: true,),
                      BannerHistory(nama: 'Pengajuan Proposal', pic: 'assets/icons/konsultasi_icon.svg', posisi: '5 April 2024, 12.00', pengajuan: false, terima: false,),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
      // diberi menu
    );
  }
}
