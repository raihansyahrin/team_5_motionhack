import 'package:flutter/material.dart';
import '../../../common/styles/colors.dart';
import '../../../common/theme/font.dart';
import '../../chat/chat_consultation_page.dart';
import '../../widgets/custom_app_bar.dart';
import 'dart:async';

class DetailPaymentPage extends StatefulWidget {
  const DetailPaymentPage({super.key});

  @override
  State<DetailPaymentPage> createState() => _DetailPaymentPageState();
}

class _DetailPaymentPageState extends State<DetailPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Pembayaran',
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Container(
                width: double.infinity,
                height: 171,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFC9C9C9),
                    width: 0.4,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 29,
                    vertical: 26,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: const Color(0xFF003D79),
                            child: Container(
                              padding: const EdgeInsets.all(2.8),
                              child: Image.asset('assets/LogoMandiri.png'),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Virtual Account Mandiri',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Outfit',
                                color: Color(0xFF7F7F7F)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'No. Virtual Account',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Outfit',
                            color: Color(0xFF7F7F7F)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '555 555 5555',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Outfit',
                                color: Color(0xFF7F7F7F)),
                          ),
                          Spacer(),
                          Icon(
                            Icons.copy_rounded,
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 44),
                child: Text(
                  'Proses verifikasi kurang dari 10 menit setelah pembayaran berhasil',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Outfit',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 58,
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 0.4, color: const Color(0xFFC9C9C9)),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text(
                        'Petunjuk Pembayaran Livin',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Outfit',
                          color: Color(0xFF7F7F7F),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.expand_more,
                        size: 20,
                        color: Color(0xFF7F7F7F),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 21.0,
          right: 21,
          bottom: 50,
        ),
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                Future.delayed(const Duration(seconds: 3), () {
                  Navigator.of(context).pop(true);
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const ChatConsultationPage(
                        isConsultant: true,
                        name: 'Aqeel',
                        pic: 'https://randomuser.me/api/portraits/men/15.jpg',
                      ),
                    ),
                    (route) => false,
                  );
                });

                return Dialog(
                  insetPadding: const EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFD9D9D9)),
                    height: 260,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_circle_outline_rounded,
                          size: 80,
                          color: Color(0xFF1B9B5A),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Pembayaran Berhasil',
                          style: lightText20,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
                color: const Color(0xFF00584B),
                borderRadius: BorderRadius.circular(8.0)),
            child: Center(
              child: Text(
                'Selanjutnya',
                style: regularText16.copyWith(
                  color: kColorScheme.background,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
