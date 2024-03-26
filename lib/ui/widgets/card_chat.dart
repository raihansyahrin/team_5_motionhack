import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/chat/chat_consultation_page.dart';

class CardChat extends StatefulWidget {
  final String nama;
  final String posisi;
  final String pic;
  final bool? isConsultant;
  const CardChat({
    super.key,
    required this.nama,
    required this.posisi,
    required this.pic,
    this.isConsultant = false,
  });

  @override
  State<CardChat> createState() => _CardChatState();
}

class _CardChatState extends State<CardChat> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ChatConsultationPage(),
          ),
        );
      },
      child: Container(
        height: 72,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
        ),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.4,
              color: Color(0xFFC9C9C9),
            ),
          ),
          color: Color(0x00f8f8ff),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              // child: Image.asset(
              //   'assets/images/image.png',
              //   height: 42,
              // ),
              child: Image.asset(
                widget.pic,
                height: 42,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.nama,
                    style: regularText14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.posisi,
                    overflow: TextOverflow.ellipsis,
                    style: regularText12.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            CircleAvatar(
              minRadius: 14,
              backgroundColor: Colors.red,
              child: Text(
                '2',
                style: regularText12.copyWith(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
