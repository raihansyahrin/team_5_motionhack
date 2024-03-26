import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/chat/chat_page.dart';

class ChatConsultationPage extends StatelessWidget {
  const ChatConsultationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatPage(),
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
          'Chat Konsultan',
          style: mediumText18.copyWith(
            color: Colors.black,
          ),
        ),
        // actions: action,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Container(
                  // color: Colors.amber,
                  height: 72,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 21,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        // child: Image.asset(
                        //   'assets/images/image.png',
                        //   height: 42,
                        // ),
                        child: Image.asset(
                          'assets/PPic.png',
                          height: 42,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Franco',
                        style: regularText16,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 21,
                        top: 21,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 16.0,
                            ),
                            decoration: const BoxDecoration(
                              color: Color(0xFF00584B),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            child: Text(
                              'Halo, saya mau berkonsultasi',
                              style: lightText14.copyWith(
                                color: const Color(
                                  0xFFF8F8FF,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          // Text(
                          //   timestamp,
                          //   style: const TextStyle(
                          //     fontWeight: FontWeight.w500,
                          //     fontSize: 10,
                          //     color: Colors.grey,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(21),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Halo, saya mau berkonsultasi',
                  hintStyle: lightText14.copyWith(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(16),
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: 24,
                    minWidth: 24,
                  ),
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/send_icon.svg',
                    ),
                    onPressed: () {
                      // Implement the send functionality
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
