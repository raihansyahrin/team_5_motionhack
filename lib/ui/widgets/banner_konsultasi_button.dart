import 'package:flutter/material.dart';

class BannerKonsultasi extends StatefulWidget {
  const BannerKonsultasi({super.key});

  @override
  State<BannerKonsultasi> createState() => _BannerKonsultasiState();
}

class _BannerKonsultasiState extends State<BannerKonsultasi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72, width: 333,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 13,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(radius: 18,),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),
                            Text(
                                "Franco",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w400,
                                ),
                            ),
                            const SizedBox(height: 5,),
                            Text(
                                "Konsultan Keuangan",
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF7F7F7F),
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                )
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.4,
            color: Color(0xFFC9C9C9),
          )
        ),
        color: Color(0xF8F8FF)
      ),
    );
  }
}
