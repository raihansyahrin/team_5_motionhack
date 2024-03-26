import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:team_5_motionhack/ui/widgets/list_consultant_widget.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
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
                      width: 111,
                    ),
                    const Text(
                      'Notifikasi',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ListConsultantWidget(
                  nama: 'Proposalmu perlu Perbaikan',
                  posisi: '12 Juni 2023',
                  pic: 'assets/icons/Bell.svg')
            ],
          ),
        ),
      ),
    );
  }
}
