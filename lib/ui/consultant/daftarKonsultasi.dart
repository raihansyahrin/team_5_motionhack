import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';
class DaftarKonsultasi extends StatefulWidget {
  const DaftarKonsultasi({super.key});

  @override
  State<DaftarKonsultasi> createState() => _DaftarKonsultasiState();
}

class _DaftarKonsultasiState extends State<DaftarKonsultasi> {
  final TextEditingController _tanggal = TextEditingController();
  final TextEditingController _waktuMulai = TextEditingController();
  final TextEditingController _waktuSelesai = TextEditingController();

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
                    SizedBox(width: 83,),
                    Text(
                      "Daftar Konsultasi",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 62,),
              Text("Tanggal",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: _tanggal,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFABABAB)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    prefixIcon: Icon(Icons.calendar_today_outlined, color: Color(0xFFABABAB),),
                    contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 5.0)
                ),
              ),
              SizedBox(height: 36,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Waktu Mulai",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        width: 154,
                        height: 84,
                        child: TextFormField(
                          controller: _waktuMulai,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFABABAB)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 13.0)
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 19,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Waktu Selesai",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16,),
                      Container(
                        width: 154,
                        height: 84,
                        child: TextFormField(
                          controller: _waktuSelesai,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFFABABAB)),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 13.0)
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 367,),
              buttonSelanjutnya(),
            ],
          ),
        ),
      ),
    );
  }
}