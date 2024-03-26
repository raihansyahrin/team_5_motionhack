import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/widgets/list_consultant_widget.dart';

class ConsultantPage extends StatelessWidget {
  const ConsultantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 125),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daftar Konsultan',
                style: regularText16,
              ),
              const SizedBox(
                height: 32,
              ),
              const SingleChildScrollView(
                child: Column(
                  children: [
                    ListConsultantWidget(),
                    ListConsultantWidget(),
                    ListConsultantWidget(),
                    ListConsultantWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
