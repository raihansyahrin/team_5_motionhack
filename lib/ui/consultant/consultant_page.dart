import 'package:flutter/material.dart';
import '../../common/theme/font.dart';
import '../../data/model/consultant.dart';
import '../widgets/list_consultant_widget.dart';

class ConsultantPage extends StatelessWidget {
  const ConsultantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 125,
            horizontal: 21,
          ),
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
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsetsDirectional.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: consultantList.length,
                  itemBuilder: (context, index) {
                    final ConsultantModel consultantModel =
                        consultantList[index];
                    return ListConsultantWidget(
                      nama: consultantModel.nama,
                      posisi: consultantModel.posisi,
                      pic: consultantModel.pic,
                      isConsultant: consultantModel.isConsultant,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
