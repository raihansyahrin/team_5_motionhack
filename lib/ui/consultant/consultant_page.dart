import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';

class ConsultantPage extends StatelessWidget {
  const ConsultantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(padding: EdgeInsets.symmetric(vertical: 125),
            child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daftar Konsultan",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Outfit',
                    ),
                  ),
                  SizedBox(height: 32,),
                  SingleChildScrollView(
                    child: Column(
                        children : [
                          BannerKonsultasi(),
                          BannerKonsultasi(),
                          BannerKonsultasi(),
                          BannerKonsultasi(),
                        ]
                    )
                  )
                ]
            )
        ),
      ),
    );
  }
}

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







