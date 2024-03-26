import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';

class Header extends StatefulWidget {
  final bool kiri;
  final bool kanan;
  final String namaKanan;
  final String namaKiri;
  const Header({super.key, required this.kiri, required this.kanan, required this.namaKanan, required this.namaKiri});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 60,
      child: Row(
        children: [
          Container(
              width: 187.5,
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.namaKiri,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Outfit',
                      color: widget.kiri ? Color(0xFF00584B) : const Color.fromRGBO(0, 0, 0, 0.40) ,
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    width: 155,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
                        color: widget.kiri ?  Color(0xFF00584B):Color(0xFFFFFF)
                    ),
                  )
                ],
              )
          ),
          Container(
              width: 187.5,
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.namaKanan,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Outfit',
                      color: widget.kanan ? Color(0xFF00584B) : const Color.fromRGBO(0, 0, 0, 0.40) ,
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    width: 155,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
                        color: widget.kanan ?  Color(0xFF00584B):Color(0xFFFFFF)
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
