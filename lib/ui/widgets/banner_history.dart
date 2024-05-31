import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/theme/font.dart';

class BannerHistory extends StatefulWidget {
  final String nama;
  final String posisi;
  final String pic;
  final bool pengajuan;
  final bool terima;
  const BannerHistory({
    super.key,
    required this.nama,
    required this.posisi,
    required this.pic,
    required this.pengajuan,
    required this.terima,
  });

  @override
  State<BannerHistory> createState() => _BannerHistoryState();
}

class _BannerHistoryState extends State<BannerHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.4,
              color: Color(0xFFC9C9C9),
            ),
          ),
          color: Color(0x00f8f8ff)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 13,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 18,
              child: SvgPicture.asset(widget.pic),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.nama,
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.posisi,
                          style: lightText12.copyWith(
                            color: const Color(0xFF7F7F7F),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            widget.pengajuan
                ? widget.terima
                    ? Container(
                        width: 63,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFFC2D5B6).withOpacity(0.5)),
                        child: const Center(
                          child: Text(
                            'Diterima',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 72, 102, 55),
                            ),
                          ),
                        ))
                    : Container(
                        width: 63,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xFFF8BFD7).withOpacity(0.5),
                        ),
                        child: const Center(
                          child: Text(
                            'Ditolak',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w300,
                              color: Color(0xFFED639E),
                            ),
                          ),
                        ),
                      )
                : Container()
          ],
        ),
      ),
    );
  }
}
