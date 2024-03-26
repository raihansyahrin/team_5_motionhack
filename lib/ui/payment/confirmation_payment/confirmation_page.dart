import 'package:flutter/material.dart';
import 'package:team_5_motionhack/ui/payment/detail_payment/detail_payment_page.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({super.key});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Konfirmasi',
      ),
      body: const SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jenis Pembelian',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Outfit'),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Paket 1x Konsultasi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Outfit',
                        color: Color(0xFF7F7F7F),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      'Waktu Konsultasi',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Outfit'),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '5 April 2024, 12.00 - 14.00 WIB',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Outfit',
                        color: Color(0xFF7F7F7F),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      'Metode Pembayaran',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Outfit'),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Virtual Account Mandiri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Outfit',
                        color: Color(0xFF7F7F7F),
                      ),
                    ),
                    SizedBox(
                      height: 96,
                    ),
                    Row(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Outfit',
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Rp. 149.000,-',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Outfit',
                            color: Color(0xFF7F7F7F),
                          ),
                        ),
                      ],
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => const BuktiPembayaran(),
                    //       ),
                    //     );
                    //   },
                    //   child: const buttonSelanjutnya(),
                    // ),
                    // const SizedBox(
                    //   height: 17,
                    // ),
                    // Container(
                    //   width: double.infinity,
                    //   height: 48,
                    //   decoration: BoxDecoration(
                    //       color: const Color(0xFFF8F8FF),
                    //       borderRadius: BorderRadius.circular(8.0),
                    //       border: Border.all(
                    //         color: const Color(0xFF00584B),
                    //         width: 1,
                    //       )),
                    //   child: const Center(
                    //     child: Text(
                    //       'Batalkan',
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //         color: Color(0xFF00584B),
                    //         fontWeight: FontWeight.w500,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 21,
          right: 21,
          bottom: 50,
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailPaymentPage(),
              ),
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
                'Selanjutnya',
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
