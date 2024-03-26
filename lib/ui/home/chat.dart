import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_5_motionhack/ui/widgets/header_navigator.dart';
import 'package:team_5_motionhack/ui/widgets/list_consultant_widget.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Container(
                height: 60,
                width: double.infinity,
                color: const Color(0xFFF8F8FF),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_outlined,
                          size: 20),
                    ),
                    const SizedBox(
                      width: 127,
                    ),
                    const Text(
                      'Chat',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit'),
                    ),
                  ],
                ),
              ),
              const Header(
                  kiri: true,
                  kanan: false,
                  namaKanan: 'Investor',
                  namaKiri: 'Konsultasi'),
              const SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  ListConsultantWidget(
                      nama: 'Franco',
                      posisi: 'Konsultan Keuangan',
                      pic: 'assets/PPic.svg'),
                  SizedBox(
                    width: double.infinity,
                    height: 74,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 340,
                        ),
                        Container(
                            width: 16,
                            height: 16,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFC5C65)),
                            child: const Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
