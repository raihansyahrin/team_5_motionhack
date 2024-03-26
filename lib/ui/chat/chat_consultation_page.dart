import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';
import 'package:team_5_motionhack/ui/widgets/profile_item.dart';

import 'package:team_5_motionhack/ui/widgets/bubble_chat.dart';
import 'package:team_5_motionhack/ui/widgets/chat_text_field.dart';

class ChatConsultationPage extends StatefulWidget {
  const ChatConsultationPage({super.key});

  @override
  State<ChatConsultationPage> createState() => _ChatConsultationPageState();
}

class _ChatConsultationPageState extends State<ChatConsultationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(
          title: "Chat Konsultan",
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                ],
              ),
            ),
            ProfileItem(),
            SizedBox(
              height: 34,
            ),
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
                  SizedBox(
                    height: 469,
                  ),
                ],
              ),
            )),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 21),
          child: ChatTextField(),
        ));
  }
}
