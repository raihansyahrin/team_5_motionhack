import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team_5_motionhack/common/styles/colors.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/chat/chat_page.dart';

import 'package:team_5_motionhack/ui/notification/notification_page.dart';
import 'package:team_5_motionhack/ui/profile/profile_page.dart';
import 'package:team_5_motionhack/ui/widgets/list_article_education.dart';
import 'package:team_5_motionhack/ui/widgets/list_consultant_widget.dart';
import 'package:team_5_motionhack/ui/widgets/video_education_widget.dart';

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
          physics: const ClampingScrollPhysics(),
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
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 44,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(width: MediaQuery.of(context).size.width / 4),
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const Lapor(),
                            //   ),
                            // );
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
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return const ListConsultantWidget(
                        nama: 'Carla',
                        posisi: 'PT Sampoerna',
                        pic: 'assets/PPic.png',
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Edukasi',
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
                // Container(
                //   margin: const EdgeInsets.only(
                //       top: 10), // Atur margin sesuai kebutuhan
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       // Text(
                //       //   'Kategori',
                //       //   style: semiBoldText18.copyWith(
                //       //       color: AppColors.primaryColors[0]),
                //       // ),
                //       // const SizedBox(height: 4),
                //       SizedBox(
                //         height:
                //             120, // Sesuaikan ketinggian ListView sesuai kebutuhan
                //         child: Center(
                //           child: ListView.separated(
                //             shrinkWrap: true,
                //             scrollDirection: Axis.horizontal,
                //             physics: const NeverScrollableScrollPhysics(),
                //             itemCount: kategoryImage.length,
                //             separatorBuilder: (context, index) =>
                //                 const SizedBox(
                //               width: 5,
                //             ),
                //             itemBuilder: (BuildContext context, int index) {
                //               return InkWell(
                //                 borderRadius: BorderRadius.circular(8.0),
                //                 onTap: () {
                //                   // Logika untuk menangani ketika item diklik
                //                   // Anda dapat menggunakan `index` untuk mengetahui item mana yang diklik
                //                 },
                //                 child: Padding(
                //                   padding: const EdgeInsets.all(8.0),
                //                   child: Column(
                //                     children: [
                //                       Image(
                //                         image: AssetImage(kategoryImage[index]),
                //                         height: 53,
                //                         width: 65,
                //                       ),
                //                       const SizedBox(
                //                         height: 10,
                //                       ),
                //                       Text(
                //                         kategoryName[index],
                //                         style: semiBoldText12,
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               );
                //             },
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
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
                          '2',
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
                color: AppColors.neutralColors[0],
              ),
            ),
          ],
        )
      ],
    );
  }
}
