import 'package:flutter/material.dart';
class buttonSelanjutnya extends StatelessWidget {
  const buttonSelanjutnya({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 48,
        child: Center(
          child:  Text(
              "Selanjutnya",
              style : TextStyle(
                fontSize: 16,
                color: Color(0xFFF8F8FF),
                fontWeight: FontWeight.w500,
              )
          ),
        ),
        decoration: BoxDecoration(
            color: Color(0xFF00584B),
            borderRadius: BorderRadius.circular(8.0)
        )
    );
  }
}
