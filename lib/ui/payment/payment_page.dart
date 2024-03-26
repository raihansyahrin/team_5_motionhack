import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';
import 'package:team_5_motionhack/ui/widgets/payment_item.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Pembayaran',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 21,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Text(
                'Virtual Account',
                style: regularText16,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                    child: Column(
                  children: [
                    PaymentItem(
                        pic: Image.asset('assets/LogoMandiri.png'),
                        namaBank: 'Virtual Account Mandiri',
                        color: const Color(0xFF003D79)),
                    PaymentItem(
                        pic: Image.asset('assets/LogoBCA.png'),
                        namaBank: 'Virtual Account BCA',
                        color: const Color(0xFF0060AF)),
                    PaymentItem(
                        pic: Image.asset('assets/LogoBNI.png'),
                        namaBank: 'Virtual Account BNI',
                        color: const Color(0xFFF15A23)),
                    PaymentItem(
                        pic: Image.asset('assets/LogoBRI.png'),
                        namaBank: 'Virtual Account BRI',
                        color: const Color(0xFF09539C)),
                  ],
                )),
              ),
              const SizedBox(
                height: 44,
              ),
              Text(
                'E-Wallet',
                style: regularText16,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                    child: Column(
                  children: [
                    PaymentItem(
                        pic: Image.asset('assets/LogoLinkAja.png'),
                        namaBank: 'Link Aja',
                        color: const Color(0xFFE82529)),
                    PaymentItem(
                        pic: Image.asset('assets/LogoGopay.png'),
                        namaBank: 'Gopay',
                        color: const Color(0xFF00AED6)),
                    PaymentItem(
                        pic: Image.asset('assets/LogoDana.png'),
                        namaBank: 'Dana',
                        color: const Color(0xFF008CEB)),
                    const SizedBox(
                      height: 47,
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => const Konfirmasi(),
                    //       ),
                    //     );
                    //   },
                    //   child: const buttonSelanjutnya(),
                    // ),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
