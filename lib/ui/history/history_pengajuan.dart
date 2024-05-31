import 'package:flutter/material.dart';
import '../widgets/banner_history.dart';
import '../widgets/header_navigator.dart';

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
            Header(
              kiri: true,
              kanan: false,
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
                    pengajuan: true,
                    terima: true,
                  ),
                  BannerHistory(
                    nama: 'Konsultasi',
                    pic: 'assets/icons/konsultasi_icon.svg',
                    posisi: '5 April 2024, 12.00',
                    pengajuan: true,
                    terima: false,
                  ),
                  BannerHistory(
                    nama: 'Laporan Mingguan',
                    pic: 'assets/icons/konsultasi_icon.svg',
                    posisi: '5 April 2024, 12.00',
                    pengajuan: false,
                    terima: true,
                  ),
                  BannerHistory(
                    nama: 'Pengajuan Proposal',
                    pic: 'assets/icons/konsultasi_icon.svg',
                    posisi: '5 April 2024, 12.00',
                    pengajuan: false,
                    terima: false,
                  ),
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
