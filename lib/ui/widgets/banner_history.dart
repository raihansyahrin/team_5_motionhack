import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BannerHistory extends StatefulWidget {
  final String nama;
  final String posisi;
  final String pic;
  final bool pengajuan;
  final bool terima;
  const BannerHistory({super.key,
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
            widget.pengajuan ?
            widget.terima ?
            Container(
              width: 63,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFC2D5B6),
                    Color.fromRGBO(194, 213, 182, 0.00),
                  ],
                  stops: [-3, 2.975],
                ),
              ),
              child: Center(
                child: Text(
                'Diterima',
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF6A994E),
                  ),
                ),
              )
            ) : Container(
                width: 63,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFF8BFD7),
                      Color.fromRGBO(248, 191, 215, 0.00),
                    ],
                    stops: [-2, 2.975]
                  ),
                ),
                child: Center(
                  child: Text(
                    'Ditolak',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFED639E),
                    ),
                  ),
                )
            ) :
                Container()
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
