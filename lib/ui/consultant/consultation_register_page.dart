import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/payment/payment_page.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';

class ConsultationRegisterPage extends StatefulWidget {
  const ConsultationRegisterPage({super.key});

  @override
  State<ConsultationRegisterPage> createState() =>
      _ConsultationRegisterPageState();
}

class _ConsultationRegisterPageState extends State<ConsultationRegisterPage> {
  final TextEditingController _tanggal = TextEditingController();
  final TextEditingController _waktuMulai = TextEditingController();
  final TextEditingController _waktuSelesai = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Daftar Konsultasi',
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                'Tanggal',
                style: regularText16,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _tanggal,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFABABAB)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: const Icon(
                    Icons.calendar_today_outlined,
                    color: Color(0xFFABABAB),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 5.0),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Waktu Mulai',
                        style: regularText16,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: 154,
                        height: 84,
                        child: TextFormField(
                          onTap: () {
                            DatePickerDialog(
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2050),
                            );
                          },
                          controller: _waktuMulai,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xFFABABAB)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 14.0,
                              horizontal: 13.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 19,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Waktu Selesai',
                        style: regularText16,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: 154,
                        height: 84,
                        child: TextFormField(
                          controller: _waktuSelesai,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFABABAB),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 14.0,
                              horizontal: 13.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PaymentPage(),
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
