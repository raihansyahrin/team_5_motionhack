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

class InvestorListPage extends StatelessWidget {
  const InvestorListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Padding(padding: EdgeInsets.symmetric(vertical: 99, horizontal: 22),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Proposal terakhir yang kamu ajukan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Outfit',
                        ),
                      ),
                      SizedBox(height: 7,),
                      Text(
                        "Kamu belum mengajukan proposal",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Outfit',
                          color: Color(0xFF7F7F7F),
                        ),
                      ),
                      SizedBox(height: 42,),
                      Text(
                        'Pilih investor',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Outfit',
                        ),
                      ),
                      SizedBox(height: 20,),
                      SingleChildScrollView(
                          child: Column(
                              children : [
                                BannerKonsultasi(nama: 'Carla', posisi: 'PT Sampoerna', pic: 'assets/PPic.svg',),
                                BannerKonsultasi(nama: 'William', posisi: 'Investor Retail', pic: 'assets/PPic.svg',),
                                BannerKonsultasi(nama: 'James', posisi: 'Investor Venture Capital', pic: 'assets/PPic.svg',),
                                BannerKonsultasi(nama: 'Carla', posisi: 'Investor Retail', pic: 'assets/PPic.svg',),
                                BannerKonsultasi(nama: 'Carla', posisi: 'Investor', pic: 'assets/PPic.svg',),
                                BannerKonsultasi(nama: 'Carla', posisi: 'Investor', pic: 'assets/PPic.svg',),
                                BannerKonsultasi(nama: 'Carla', posisi: 'Investor', pic: 'assets/PPic.svg',),
                              ]
                          )
                      )
                    ]
                ),
              )
          ),
      // kurang bottom nav bar
    );
  }
}







