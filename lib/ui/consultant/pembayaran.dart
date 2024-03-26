import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 34, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32),
              Container(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined, size: 20),
                    ),
                    SizedBox(width: 99,),
                    Text(
                      "Pembayaran",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Text(
                "Virtual Account",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Outfit'
                ),
              ),
              SizedBox(height: 40,),
              Center(
                  child:Column(
                    children: [
                      BannerPembayaran(
                          pic: Image.asset('assets/LogoMandiri.png'),
                          namaBank: "Virtual Account Mandiri",
                          color : Color(0xFF003D79)
                      ),
                      BannerPembayaran(
                          pic: Image.asset('assets/LogoBCA.png'),
                          namaBank: "Virtual Account BCA",
                          color : Color(0xFF0060AF)
                      ),
                      BannerPembayaran(
                          pic: Image.asset('assets/LogoBNI.png'),
                          namaBank: "Virtual Account BNI",
                          color : Color(0xFFF15A23)
                      ),
                      BannerPembayaran(
                          pic: Image.asset('assets/LogoBRI.png'),
                          namaBank: "Virtual Account BRI",
                          color : Color(0xFF09539C)
                      ),
                    ],
                  )
              ),

              SizedBox(height: 44,),
              Text(
                "E-Wallet",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Outfit'
                ),
              ),
              SizedBox(height: 40,),
              Center(
                  child:Column(
                    children: [
                      BannerPembayaran(
                          pic: Image.asset('assets/LogoLinkAja.png'),
                          namaBank: "Link Aja",
                          color : Color(0xFFE82529)
                      ),
                      BannerPembayaran(
                          pic: Image.asset('assets/LogoGopay.png'),
                          namaBank: "Gopay",
                          color : Color(0xFF00AED6)
                      ),
                      BannerPembayaran(
                          pic: Image.asset('assets/LogoDana.png'),
                          namaBank: "Dana",
                          color : Color(0xFF008CEB)
                      ),
                      SizedBox(height: 47,),
                      buttonSelanjutnya(),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}