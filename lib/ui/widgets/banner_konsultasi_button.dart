import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BannerKonsultasi extends StatefulWidget {
  final String nama;
  final String posisi;
  final String pic;
  const BannerKonsultasi({super.key,
    required this.nama,
    required this.posisi,
    required this.pic,
  });

  @override
  State<BannerKonsultasi> createState() => _BannerKonsultasiState();
}

class _BannerKonsultasiState extends State<BannerKonsultasi> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74, width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 13,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(radius: 18, child: SvgPicture.asset(widget.pic),),
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
                                widget.nama,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w400,
                                ),
                            ),
                            const SizedBox(height: 5,),
                            Text(
                                widget.posisi,
                              style: TextStyle(
                                fontSize: 12,
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
            ),
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
