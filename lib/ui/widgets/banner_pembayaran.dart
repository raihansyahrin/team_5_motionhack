import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerPembayaran extends StatelessWidget {
  final Image pic;
  final String namaBank;
  final Color color;
  const BannerPembayaran({super.key, required this.pic, required this.namaBank, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64, width: 333,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              width: 0.4,
              color: Color(0xFFC9C9C9),
            )
        ),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(radius: 14,
            child:  Container(
              padding: EdgeInsets.all(2.8),
              child: pic,
            ),
            backgroundColor: color,),
          SizedBox(width: 20,),
          Text(
            namaBank,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontFamily: 'Outfit',
                color: Color(0xFF7F7F7F)
            ),
          ),
          Spacer(),
          Icon(Icons.navigate_next, size: 16,),
        ],
      ),
    );
  }
}
