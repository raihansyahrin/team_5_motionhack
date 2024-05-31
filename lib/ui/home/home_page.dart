import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/styles/colors.dart';
import '../../common/theme/font.dart';
import '../../data/model/consultant.dart';
import '../chat/chat_page.dart';
import '../laporan/laporan_mingguan.dart';
import '../notification/notification_page.dart';
import '../profile/profile_page.dart';
import '../widgets/list_article_education.dart';
import '../widgets/list_consultant_widget.dart';
import '../widgets/video_education_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<dynamic> categoryIcon = [
    'assets/icons/report_icon.svg',
    'assets/icons/chat_icon.svg',
  ];

  final List<dynamic> categoryName = [
    'Laporan\nMingguan',
    'Chat',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                _buildHeader(context),
                const Divider(
                  thickness: 0,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(255, 212, 236, 212),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  padding: const EdgeInsets.all(21),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/calendar_icon.svg',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jadwal Konsultasi',
                                style: regularText12,
                              ),
                              Text(
                                'Belum Ada',
                                style: lightText12,
                              ),
                              // Text(
                              //   '12.00, 5 Aprill 2024',
                              //   style: lightText12,
                              // ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/folder_icon.svg',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deadline Laporan',
                                style: regularText12,
                              ),
                              Text(
                                'Belum Ada',
                                style: lightText12,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 44,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(width: MediaQuery.of(context).size.width / 5),
                    itemCount: categoryIcon.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Handle item tap here
                          if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChatPage(),
                              ),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LaporanMingguan(),
                              ),
                            );
                          }
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              categoryIcon[index],
                              height: 44,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              categoryName[index],
                              style: regularText12,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Rekomendasi Konsultan',
                  style: regularText16,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsetsDirectional.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      final ConsultantModel consultantModel =
                          consultantList[index];
                      return ListConsultantWidget(
                        nama: consultantModel.nama,
                        posisi: consultantModel.posisi,
                        pic: consultantModel.pic,
                        isConsultant: consultantModel.isConsultant,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Video Edukasi',
                  style: regularText16,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: ListView.separated(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const VideoEducationCard(
                        title: 'Dasar Pemasaran',
                        nameCreator: 'Jack',
                        entityVideo: 3,
                        thumbnail: 'assets/images/avatar_image.png',
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 15,
                    ),
                    itemCount: 3,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Artikel Edukasi',
                  style: regularText16,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsetsDirectional.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const ListArticleEducation(
                        title:
                            'Inovasi Produk: Cara Ampuh Menarik Perhatian Pasar ',
                        category: 'Produk dan Pemasaran',
                        image: 'assets/icons/article_icon.svg',
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/icons/logo_splash.svg',
          height: 40,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                );
              },
              icon: Stack(
                children: [
                  SizedBox(
                    height: 40,
                    child: SvgPicture.asset(
                      'assets/icons/notification_icon.svg',
                      height: 30,
                      // ignore: deprecated_member_use
                      color: AppColors.neutralColors[0],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              icon: SvgPicture.asset(
                'assets/icons/user_icon.svg',
                height: 30,
                // ignore: deprecated_member_use
                color: AppColors.neutralColors[0],
              ),
            ),
          ],
        )
      ],
    );
  }
}
