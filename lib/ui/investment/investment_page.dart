import 'package:flutter/material.dart';
import '../../common/theme/font.dart';
import '../../data/model/investor.dart';
import '../widgets/list_investor_widget.dart';

class InvestmentPage extends StatelessWidget {
  final bool? isSubmitProposal;
  const InvestmentPage({
    super.key,
    required this.isSubmitProposal,
  });

  // Metode build dan kode lainnya...

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 125,
              ),
              Text(
                'Proposal yang terakhir kamu ajukan',
                style: regularText16,
              ),
              //jika is submit maka muncul container ini
              if (isSubmitProposal ?? false) ...[
                Container(
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://randomuser.me/api/portraits/men/2.jpg',
                          height: 42,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Proposal Pendanaan Bagian',
                                  overflow: TextOverflow.ellipsis,
                                  style: regularText14,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '23 Maret 2023',
                                  style: regularText12.copyWith(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          width: 111,
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xFF99E4E2).withOpacity(0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: Text(
                            'Dalam Pemeriksaan',
                            style: lightText10.copyWith(
                              color: const Color(0xFF04AEA9),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ] else
                //jika belum submit maka muncul text berikut
                Text(
                  'Kamu belum mengajukan proposal',
                  style: regularText12.copyWith(
                    color: Colors.grey,
                  ),
                ),
              const SizedBox(
                height: 42,
              ),
              Text(
                'Pilih Investor',
                style: regularText16,
              ),
              const SizedBox(
                height: 21,
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsetsDirectional.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    final InvestorModel investorModel = investorList[index];
                    return ListInvestorWidget(
                      nama: investorModel.nama,
                      posisi: investorModel.posisi,
                      pic: investorModel.pic,
                      isConsultant: investorModel.isConsultant,
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
