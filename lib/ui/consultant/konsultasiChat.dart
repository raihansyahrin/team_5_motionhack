import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:team_5_motionhack/ui/widgets/banner_konsultasi_button.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/banner_profile.dart';
import 'package:team_5_motionhack/ui/widgets/banner_pembayaran.dart';
import 'package:team_5_motionhack/ui/widgets/button_Selanjutnya.dart';
import 'package:team_5_motionhack/ui/widgets/notifikasi_pembayaranBerhasil.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';
import 'package:team_5_motionhack/ui/widgets/bubble_chat.dart';
import 'package:team_5_motionhack/ui/widgets/chat_text_field.dart';
class KonsultasiChat extends StatefulWidget {
  const KonsultasiChat({super.key});

  @override
  State<KonsultasiChat> createState() => _KonsultasiChatState();
}

class _KonsultasiChatState extends State<KonsultasiChat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 34, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_new_outlined, size: 20),
                        ),
                        SizedBox(width: 89,),
                        Text(
                          "Chat Konsultan",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Outfit'
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ProfileKonsultasi(),
            SizedBox(height: 34,),
            SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BubbleChat1(),
                        ],
                      ),
                      SizedBox(height: 469,),
                    ],
                  ),
                )
            ),
          ],
        ),
      bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(vertical: 40, horizontal: 21),
        child: ChatTextField(),
      )
    );
  }
}
