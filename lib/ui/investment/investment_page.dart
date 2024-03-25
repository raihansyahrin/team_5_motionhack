import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';

class InvestmentPage extends StatelessWidget {
  const InvestmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSubmitProposal = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 99),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Proposal yang terakhir kamu ajukan',
                style: regularText16,
              ),
              Text(
                'Kamu belum mengajukan proposal',
                style: regularText12.copyWith(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 42,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
