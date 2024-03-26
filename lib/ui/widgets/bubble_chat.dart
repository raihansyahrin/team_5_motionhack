import 'package:flutter/material.dart';

class BubbleChat1 extends StatefulWidget {
  const BubbleChat1({super.key});

  @override
  State<BubbleChat1> createState() => _BubbleChat1State();
}

class _BubbleChat1State extends State<BubbleChat1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      height: 39,
      decoration: BoxDecoration(
        color: Color(0xFF00584B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          "Halo, saya mau berkonsultasi",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              fontFamily: 'Outfit',
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
