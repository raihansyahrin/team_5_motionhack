import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';

class Konfirmasi extends StatefulWidget {
  const Konfirmasi({super.key});

  @override
  State<Konfirmasi> createState() => _KonfirmasiState();
}

class _KonfirmasiState extends State<Konfirmasi> {
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
                    SizedBox(width: 106,),
                    Text(
                      "Konfirmasi",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 73,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jenis Pembelian",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Outfit'
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "Paket 1x Konsultasi",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Outfit',
                          color: Color(0xFF7F7F7F),
                        ),
                      ),
                      SizedBox(height: 48,),
                      Text(
                        "Waktu Konsultasi",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Outfit'
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "5 April 2024, 12.00 - 14.00 WIB",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Outfit',
                          color: Color(0xFF7F7F7F),
                        ),
                      ),
                      SizedBox(height: 48,),
                      Text(
                        "Metode Pembayaran",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Outfit'
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "Virtual Account Mandiri",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Outfit',
                          color: Color(0xFF7F7F7F),
                        ),
                      ),
                      SizedBox(height: 96,),
                      Row(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Outfit',
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Rp. 149.000,-",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Outfit',
                              color: Color(0xFF7F7F7F),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 176,),
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