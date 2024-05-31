import 'package:flutter/material.dart';
import '../../common/theme/font.dart';
import '../widgets/banner_history.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Column(
            children: [
              TabBar(
                labelStyle: semiBoldText14,
                labelColor: const Color(0xFF00584B),
                unselectedLabelColor: const Color(0xFF1A839F),
                indicatorColor: const Color(0xFF00584B),
                tabs: const [
                  Tab(
                    text: 'Investasi',
                  ),
                  Tab(
                    text: 'Konsultasi',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsetsDirectional.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 21.0,
                              vertical: 5,
                            ),
                            child: Column(
                              children: [
                                BannerHistory(
                                  nama: 'Pengajuan Proposal',
                                  pic: 'assets/icons/historylist_icon.svg',
                                  posisi: '5 April 2024, 12.00',
                                  pengajuan: true,
                                  terima: true,
                                ),
                                BannerHistory(
                                  nama: 'Pengajuan Proposal',
                                  pic: 'assets/icons/historylist_icon.svg',
                                  posisi: '5 April 2024, 12.00',
                                  pengajuan: true,
                                  terima: false,
                                ),
                                BannerHistory(
                                  nama: 'Laporan Mingguan',
                                  pic: 'assets/icons/historylist_icon.svg',
                                  posisi: '5 April 2024, 12.00',
                                  pengajuan: false,
                                  terima: true,
                                ),
                                BannerHistory(
                                  nama: 'Pengajuan Proposal',
                                  pic: 'assets/icons/historylist_icon.svg',
                                  posisi: '5 April 2024, 12.00',
                                  pengajuan: false,
                                  terima: false,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsetsDirectional.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.all(21.0),
                            child: Column(
                              children: [
                                BannerHistory(
                                  nama: 'Konsultasi',
                                  pic: 'assets/icons/historylist_icon.svg',
                                  posisi: '5 April 2024, 12.00',
                                  pengajuan: false,
                                  terima: false,
                                ),
                                BannerHistory(
                                  nama: 'Konsultasi',
                                  pic: 'assets/icons/historylist_icon.svg',
                                  posisi: '5 April 2024, 12.00',
                                  pengajuan: false,
                                  terima: false,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
