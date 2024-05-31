import 'package:flutter/material.dart';
import '../../common/theme/font.dart';
import '../investment/profile_investor/profile_investor_page.dart';

class ListInvestorWidget extends StatefulWidget {
  final String nama;
  final String posisi;
  final String pic;
  final bool? isConsultant;
  const ListInvestorWidget({
    super.key,
    required this.nama,
    required this.posisi,
    required this.pic,
    this.isConsultant = false,
  });

  @override
  State<ListInvestorWidget> createState() => _ListInvestorWidgetState();
}

class _ListInvestorWidgetState extends State<ListInvestorWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileInvestorPage(),
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
              child: Image.network(
                widget.pic,
                height: 42,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    // Text(
                    //   'Franco',
                    //   style: regularText14,
                    // ),
                    Text(
                      widget.nama,
                      style: regularText14,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Text(
                    //   'Konsultan Keuangan',
                    //   style: regularText12.copyWith(
                    //     color: Colors.grey,
                    //   ),
                    // ),
                    Text(
                      widget.posisi,
                      style: regularText12.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
