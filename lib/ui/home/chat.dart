import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';
import 'package:team_5_motionhack/ui/widgets/header_navigator.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
                color: Color(0xFFF8F8FF),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined, size: 20),
                    ),
                    SizedBox(width: 127,),
                    Text(
                      'Chat',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit'
                      ),
                    ),
                  ],
                ),
              ),
               Header(kiri: true, kanan: false, namaKanan: 'Investor', namaKiri: 'Konsultasi'),
              SizedBox(height: 5,),
              Stack(
                children: [
                  BannerKonsultasi(nama: 'Franco', posisi: 'Konsultan Keuangan', pic: 'assets/PPic.svg'),
                  Container(width: double.infinity, height: 74,
                    child:Row(
                      children: [
                        SizedBox(width: 340,),
                        Container(width: 16, height: 16,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFC5C65)
                          ),
                          child: Center(
                            child: Text('2',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          )
                        )
                      ],
                      ),
                    )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

