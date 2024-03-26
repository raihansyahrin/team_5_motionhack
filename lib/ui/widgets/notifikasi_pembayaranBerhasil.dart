import 'package:flutter/material.dart';

class NotifikasiPembayaran extends StatelessWidget {
  const NotifikasiPembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: const Color(0xFFD9D9D9),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline_rounded,
            size: 80,
            color: Color(0xFF1B9B5A),
          ),
          SizedBox(
            height: 36,
          ),
          Text(
            "Pembayaran Berhasil",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              fontFamily: 'Outfit',
            ),
          ),
        ],
      ),
    );
  }
}
