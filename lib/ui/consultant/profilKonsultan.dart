import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';
class ProfilKonsultan extends StatefulWidget {
  const ProfilKonsultan({super.key});

  @override
  State<ProfilKonsultan> createState() => _ProfilKonsultanState();
}

class _ProfilKonsultanState extends State<ProfilKonsultan> {
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
                    SizedBox(width: 89,),
                    Text(
                      "Profil Konsultan",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit'
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 68,),
              CircleAvatar(radius: 40),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    "Nama",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Outfit'
                    ),
                  ),
                  SizedBox(width: 116,),
                  Text(
                    "Pendidikan",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Outfit'
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4,),
              Row(
                children: [
                  Text(
                    "Franco",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Outfit',
                        color: Color(0xFF7F7F7F)
                    ),
                  ),
                  SizedBox(width: 110,),
                  Container(
                    width: 157,
                    height: 46,
                    child: Text(
                      "S2 Akuntansi Universitas Indonesia",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Outfit',
                        color: Color(0xFF7F7F7F),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 18,),
              const Text(
                "Bidang Keahlian",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Outfit',
                ),
              ),
              SizedBox(height: 4,),
              const Text(
                "Konsultan Keuangan",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Outfit',
                  color: Color(0xFF7F7F7F),
                ),
              ),
              SizedBox(height: 42,),
              const Text(
                "Lampiran CV",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Outfit',
                ),
              ),
              SizedBox(height: 16,),
              Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF96BBB5),
                    borderRadius: BorderRadius.circular(4.0)
                ),

                child: Padding(
                  padding : EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.file_copy_outlined, size: 20, color: Color(0xFF00584B),),
                      SizedBox(width: 14,),
                      const Text(
                        "CV- Franco.pdf",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Outfit',
                            color: Color(0xFF00584B)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              const Text(
                "Lampiran Portofolio",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Outfit',
                ),
              ),
              SizedBox(height: 16,),
              Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF96BBB5),
                    borderRadius: BorderRadius.circular(4.0)
                ),

                child: Padding(
                  padding : EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.file_copy_outlined, size: 20, color: Color(0xFF00584B),),
                      SizedBox(width: 14,),
                      const Text(
                        "Portfolio- Franco.pdf",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Outfit',
                            color: Color(0xFF00584B)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 152,),
              Container(
                  width: double.infinity,
                  height: 48,
                  child: Center(
                    child:  Text(
                        "Daftar Konsultasi",
                        style : TextStyle(
                          fontSize: 16,
                          color: Color(0xFFF8F8FF),
                          fontWeight: FontWeight.w500,
                        )
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFF00584B),
                      borderRadius: BorderRadius.circular(8.0)
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}