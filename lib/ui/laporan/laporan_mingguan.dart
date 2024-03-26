import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/widgets/bottom_nav_bar.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';
import 'dart:async';

class LaporanMingguan extends StatefulWidget {
  const LaporanMingguan({super.key});

  @override
  State<LaporanMingguan> createState() => _LaporanMingguanState();
}

class _LaporanMingguanState extends State<LaporanMingguan> {
  final TextEditingController _judul = TextEditingController();
  final TextEditingController _tanggal = TextEditingController();
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Laporan Investasi',
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: double.infinity,
                      color: const Color(0xFF96BBB5),
                    ),
                    SvgPicture.asset('assets/images/background_profile.svg'),
                    const Positioned(
                      top: 85,
                      left: 110,
                      child: Text(
                        "Kufo Kopi",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Outfit'),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 21,
                    right: 21,
                    top: 180,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: (MediaQuery.of(context).size.width / 2) -
                                    21,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nama Pemilik',
                                      style: regularText14,
                                    ),
                                    Text('Michael', style: lightText16),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: (MediaQuery.of(context).size.width / 2) -
                                    21,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Investor',
                                      style: regularText14,
                                    ),
                                    Text('Clara',
                                        // maxLines: 5,
                                        overflow: TextOverflow.clip,
                                        style: lightText16),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Judul',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Outfit',
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: _judul,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFABABAB)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 13.0, horizontal: 18.0),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Tanggal',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Outfit',
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: _tanggal,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFABABAB)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              prefixIcon: const Icon(
                                Icons.calendar_today_outlined,
                                color: Color(0xFFABABAB),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 14.0, horizontal: 5.0),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Tautan Dokumen Berkas Laporan',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Outfit',
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 44,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xFF96BBB5),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/file_icon.svg'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isTapped = !isTapped;
                                      });
                                    },
                                    child: isTapped
                                        ? const Text(
                                            'Laporan Progres Kufo Kopi W1.xls',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF00584B)),
                                          )
                                        : const Text(
                                            '(File: max 10 MB)',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF00584B)),
                                          ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 75,
                  left: 21,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/image.png',
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 21.0,
          right: 21,
          bottom: 50,
        ),
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                Future.delayed(const Duration(seconds: 3), () {
                  Navigator.of(context).pop(true);
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBar(
                        initialPage: 3,
                      ),
                    ),
                    (route) => false,
                  );
                });

                return Dialog(
                  insetPadding: const EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFD9D9D9)),
                    height: 260,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_circle_outline_rounded,
                          size: 80,
                          color: Color(0xFF1B9B5A),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Progress Laporan\nberhasil dikirim!',
                          style: lightText20,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 21),
                          child: Text(
                            'Investor sedang memeriksa laporan anda.\nLihat update status laporan di menu Riwayat',
                            style: lightText12,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
                color: const Color(0xFF00584B),
                borderRadius: BorderRadius.circular(8.0)),
            child: const Center(
              child: Text(
                'Kirim',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFF8F8FF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
