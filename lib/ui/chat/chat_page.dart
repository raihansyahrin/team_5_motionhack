import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/widgets/bottom_nav_bar.dart';
import 'package:team_5_motionhack/ui/widgets/card_chat.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(
      //   title: 'Chat',
      // ),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavBar(
                  initialPage: 0,
                ),
              ),
              (route) => false,
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 16,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Chat',
          style: mediumText16.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: DefaultTabController(
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
                  text: 'Investor',
                ),
                Tab(
                  text: 'Konsultan',
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
                          padding: EdgeInsets.all(21.0),
                          child: CardChat(
                            nama: 'Carla',
                            posisi:
                                'Laporan investasi sudah saya asdf asdfa fad adsf adsf ads f',
                            pic: 'assets/PPic.png',
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
                          child: CardChat(
                            nama: 'Carla',
                            posisi:
                                'Laporan investasi sudah saya asdf asdfa fad adsf adsf ads f',
                            pic: 'assets/PPic.png',
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
    );
  }
}