import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';
class BuktiPembayaran extends StatefulWidget {
  const BuktiPembayaran({super.key});

  @override
  State<BuktiPembayaran> createState() => _BuktiPembayaranState();
}

class _BuktiPembayaranState extends State<BuktiPembayaran> {
  bool _showNotif = false;

  void _showNotifikasiTemporary() {
    setState(() {
      _showNotif = true;
    });
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showNotif=false;
      });
    });
  }

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
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                height: 171,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFC9C9C9),
                    width: 0.4,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 29,
                    vertical: 26,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(radius: 14,
                            child:  Container(
                              padding: EdgeInsets.all(2.8),
                              child: Image.asset('assets/LogoMandiri.png'),
                            ),
                            backgroundColor: Color(0xFF003D79),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            "Virtual Account Mandiri",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Outfit',
                                color: Color(0xFF7F7F7F)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Text(
                        "No. Virtual Account",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Outfit',
                            color: Color(0xFF7F7F7F)
                        ),
                      ),
                      SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "555 555 5555",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Outfit',
                                color: Color(0xFF7F7F7F)
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.copy_rounded, size: 20,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 44),
                child : Text(
                  "Proses verifikasi kurang dari 10 menit setelah pembayaran berhasil",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Outfit',
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                height: 58,
                decoration: BoxDecoration(
                  border: Border.all(
                      width:0.4,
                      color: Color(0xFFC9C9C9)
                  ),
                ),


                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text(
                        "Petunjuk Pembayaran Livin",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Outfit',
                          color: Color(0xFF7F7F7F),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.expand_more, size: 20, color: Color(0xFF7F7F7F),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 239,),
              GestureDetector(
                onTap: () {
                  _showNotifikasiTemporary();
                },
                child: buttonSelanjutnya(),
              ),
              if (_showNotif)
                NotifikasiPembayaran()
            ],
          ),
        ),
      ),
    );
  }
}