import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common/styles/colors.dart';
import '../../../common/theme/font.dart';
import '../register_consultation/consultation_register_page.dart';
import '../../widgets/custom_app_bar.dart';

class ProfileConsultantPage extends StatefulWidget {
  const ProfileConsultantPage({super.key});

  @override
  State<ProfileConsultantPage> createState() => _ProfileConsultantPageState();
}

class _ProfileConsultantPageState extends State<ProfileConsultantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profil Konsultan',
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
                                      'Aqeel',
                                      style: lightText14.copyWith(
                                        color: const Color(0xFF7F7F7F),
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
                                        color: const Color(0xFF7F7F7F),
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
                                    'Konsultan Legal',
                                    style: lightText14.copyWith(
                                      color: const Color(0xFF7F7F7F),
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
                                  Text(
                                    'CV-Aqeel.pdf',
                                    style: lightText14.copyWith(
                                      color: const Color(0xFF00584B),
                                    ),
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
                                  Text(
                                    'Portfolio- Aqeel.pdf',
                                    style: lightText14.copyWith(
                                      color: const Color(0xFF00584B),
                                    ),
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
                    child: Image.network(
                      'https://randomuser.me/api/portraits/men/15.jpg',
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
                builder: (context) => const RegisterConsultationPage(),
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
                'Daftar Konsultasi',
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
