import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team_5_motionhack/common/styles/colors.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final List<dynamic> kategoryImage = [
  //   'assets/icons/Promosi.png',
  //   'assets/icons/Sales.png',
  //   'assets/icons/Operasional.png',
  //   'assets/icons/Kreatif.png',
  // ];

  final List<dynamic> kategoryName = [
    'Promosi',
    'Penjualan',
    'Operasional',
    'Kreatif',
    'Akomodasi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: _buildHeader(context),
              ),
              const Divider(
                thickness: 0,
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
              onPressed: () {},
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
