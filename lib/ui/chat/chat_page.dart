import 'package:flutter/material.dart';
import '../../common/theme/font.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/card_chat.dart';

class ChatPage extends StatelessWidget {
  final int initialIndex;
  const ChatPage({
    super.key,
    this.initialIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            size: 20,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Chat',
          style: mediumText18.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: DefaultTabController(
        initialIndex: initialIndex,
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
                            nama: 'Franco',
                            posisi:
                                'Laporan investasi sudah saya tangani. Untuk selanjutnya kami akan berikan arah lebih lanjut.',
                            pic:
                                'https://randomuser.me/api/portraits/men/2.jpg',
                            isConsultant: false,
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
                            nama: 'Aqeel',
                            posisi:
                                'Membuat bisnis berkembang bisa melalui berbagai cara. Namun yang saya sarankan berdasarkan data, ialah coba untuk analisis trend masa kini.',
                            pic:
                                'https://randomuser.me/api/portraits/men/15.jpg',
                            isConsultant: true,
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
