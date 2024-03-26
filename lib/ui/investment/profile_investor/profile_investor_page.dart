import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/investment/form_submission/form_submission_page.dart';

import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';

class ProfileInvestorPage extends StatefulWidget {
  const ProfileInvestorPage({super.key});

  @override
  State<ProfileInvestorPage> createState() => _ProfileInvestorPageState();
}

class _ProfileInvestorPageState extends State<ProfileInvestorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profil Investor',
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 120,
                      width: double.infinity,
                      color: const Color(0xFF96BBB5),
                    ),
                    SvgPicture.asset('assets/images/background_profile.svg'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 21,
                    right: 21,
                    top: 180,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: (MediaQuery.of(context).size.width / 2) -
                                    21,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nama',
                                      style: regularText14,
                                    ),
                                    Text(
                                      'Franco',
                                      style: lightText14.copyWith(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: (MediaQuery.of(context).size.width / 2) -
                                    21,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pendidikan',
                                      style: regularText14,
                                    ),
                                    Text(
                                      'S2 Akuntansi Universitas Indonesia',
                                      // maxLines: 5,
                                      overflow: TextOverflow.clip,
                                      style: lightText14.copyWith(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bidang Keahlian',
                                    style: regularText14,
                                  ),
                                  Text(
                                    'Konsultan Keuangan',
                                    style: lightText14.copyWith(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Lampiran CV',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Outfit',
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 44,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xFF96BBB5),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/file_icon.svg'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  const Text(
                                    'CV- Franco.pdf',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF00584B)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Lampiran Portofolio',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Outfit',
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 44,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xFF96BBB5),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/file_icon.svg'),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  const Text(
                                    'Portfolio- Franco.pdf',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF00584B)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 75,
                  left: 21,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/image.png',
                      height: 80,
                    ),
                  ),
                ),
              ],
            ),
          ],
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
                builder: (context) => const FormSubmissionPage(),
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
                'Ajukan Proposal',
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
