import 'package:flutter/material.dart';
import '../../../common/styles/colors.dart';
import '../../../common/theme/font.dart';
import '../../payment/payment_page.dart';
import '../../widgets/custom_app_bar.dart';
import 'package:intl/intl.dart'; // Import pustaka intl

class RegisterConsultationPage extends StatefulWidget {
  const RegisterConsultationPage({super.key});

  @override
  State<RegisterConsultationPage> createState() =>
      _RegisterConsultationPageState();
}

class _RegisterConsultationPageState extends State<RegisterConsultationPage> {
  final TextEditingController _date = TextEditingController();
  final TextEditingController _waktuMulai = TextEditingController();
  final TextEditingController _waktuSelesai = TextEditingController();

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    if (selectedDate.isBefore(DateTime(1901, 1))) {
      selectedDate = DateTime(1901, 1); // Atur selectedDate ke firstDate
    }
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1901, 1),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;

        // Format tanggal sesuai keinginan
        DateFormat formatter = DateFormat("EEEE, dd MMMM yyyy");
        String formattedDate = formatter.format(picked);

        _date.value = TextEditingValue(text: formattedDate);
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedDate),
    );

    if (picked != null) {
      setState(() {
        // Buat DateTime baru dengan menggabungkan tanggal dari selectedDate dengan waktu yang dipilih
        final newDateTime = DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          picked.hour,
          picked.minute,
        );

        // Format waktu sesuai keinginan
        DateFormat formatter = DateFormat("HH:mm WIB");
        String formattedTime = formatter.format(newDateTime);

        // Mengatur nilai teks pada _waktuMulai menggunakan value
        _waktuMulai.value = TextEditingValue(text: formattedTime);
      });
    }
  }

  Future<void> _selectTimeEND(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedDate),
    );

    if (picked != null) {
      setState(() {
        // Buat DateTime baru dengan menggabungkan tanggal dari selectedDate dengan waktu yang dipilih
        final newDateTime = DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          picked.hour,
          picked.minute,
        );

        // Format waktu sesuai keinginan
        DateFormat formatter = DateFormat("HH:mm WIB");
        String formattedTime = formatter.format(newDateTime);

        // Mengatur nilai teks pada _waktuMulai menggunakan value
        _waktuSelesai.value = TextEditingValue(text: formattedTime);
      });
    }
  }

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
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: _date,
                    keyboardType: TextInputType.datetime,
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

                    // onTap: () {
                    //   _selectDate(context);

                    // },
                  ),
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
                        child: GestureDetector(
                          onTap: () => _selectTime(context),
                          child: AbsorbPointer(
                            child: TextFormField(
                              controller: _waktuMulai,
                              // keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFABABAB)),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 14.0, horizontal: 16.0),
                              ),
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
                        child: GestureDetector(
                          onTap: () => _selectTimeEND(context),
                          child: AbsorbPointer(
                            child: TextFormField(
                              controller: _waktuSelesai,
                              // keyboardType: TextInputType.t,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFABABAB)),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 14.0, horizontal: 16.0),
                              ),
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
