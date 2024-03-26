import 'package:flutter/material.dart';
import 'package:team_5_motionhack/ui/widgets/banner_history.dart';
import 'package:team_5_motionhack/ui/widgets/header_navigator.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(top: 100, bottom: 25, left: 21, right: 21),
        child: Column(
          children: [
            Header(
              kiri: false,
              kanan: true,
              namaKanan: 'Konsultasi',
              namaKiri: 'Pengajuan',
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  BannerHistory(
                    nama: 'Konsultasi',
                    pic: 'assets/icons/konsultasi_icon.svg',
                    posisi: '5 April 2024, 12.00',
                    pengajuan: false,
                    terima: false,
                  )
                ],
              ),
            )
          ],
        ),
      )),
      // diberi menu
    );
  }
}
