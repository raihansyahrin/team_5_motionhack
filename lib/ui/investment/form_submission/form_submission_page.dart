import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/investment/investment_page.dart';
import 'package:team_5_motionhack/ui/widgets/bottom_nav_bar.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';

class FormSubmissionPage extends StatelessWidget {
  const FormSubmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameProduct = TextEditingController();
    final TextEditingController categoryUMKM = TextEditingController();
    final TextEditingController descriptionProduct = TextEditingController();

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Form Pengajuan Proposal',
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
                'Nama produk',
                style: regularText16,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: nameProduct,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFABABAB)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Kategory UMKM',
                style: regularText16,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: categoryUMKM,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFABABAB)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Deskripsi singkat produk',
                style: regularText16,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 100,
                child: TextFormField(
                  controller: descriptionProduct,
                  maxLines: 7,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFABABAB)),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 14.0,
                      horizontal: 14.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Tautan Proposal Pengajuan',
                style: regularText16,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF96BBB5),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/file_icon.svg'),
                      const SizedBox(
                        width: 14,
                      ),
                      Text(
                        '(File: max 10 MB)',
                        style: lightText14,
                      ),
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
                      builder: (context) => const BottomNavBar(
                        initialPage: 2,
                      ),
                    ),
                    (route) => false,
                  );
                  // Navigator.of(context).pushAndRemoveUntil(
                  //   MaterialPageRoute(
                  //     builder: (context) => const InvestmentPage(
                  //       isSubmitProposal: true,
                  //     ),
                  //   ),
                  //   (route) => false,
                  // );
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
                          'Pengajuan Proposal Berhasil',
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
