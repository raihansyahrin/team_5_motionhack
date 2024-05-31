import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/theme/font.dart';
import '../payment/confirmation_payment/confirmation_page.dart';

class PaymentItem extends StatelessWidget {
  final Image pic;
  final String namaBank;
  final Color color;
  const PaymentItem(
      {super.key,
      required this.pic,
      required this.namaBank,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ConfirmationPage(),
          ),
        );
      },
      child: Container(
        height: 64,
        width: 333,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.4,
              color: Color(0xFFC9C9C9),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: color,
              child: Container(
                padding: const EdgeInsets.all(2.8),
                child: pic,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              namaBank,
              style: lightText16,
            ),
            const Spacer(),
            SvgPicture.asset('assets/icons/chevron_right.svg'),
          ],
        ),
      ),
    );
  }
}
