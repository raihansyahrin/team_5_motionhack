import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final bool kiri;
  final bool kanan;
  final String namaKanan;
  final String namaKiri;
  const Header(
      {super.key,
      required this.kiri,
      required this.kanan,
      required this.namaKanan,
      required this.namaKiri});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 60,
      child: Row(
        children: [
          SizedBox(
              width: 187.5,
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.namaKiri,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Outfit',
                      color: widget.kiri
                          ? const Color(0xFF00584B)
                          : const Color.fromRGBO(0, 0, 0, 0.40),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 155,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12)),
                        color: widget.kiri
                            ? const Color(0xFF00584B)
                            : const Color(0x00ffffff)),
                  )
                ],
              )),
          SizedBox(
              width: 187.5,
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.namaKanan,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Outfit',
                      color: widget.kanan
                          ? const Color(0xFF00584B)
                          : const Color.fromRGBO(0, 0, 0, 0.40),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 155,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12)),
                        color: widget.kanan
                            ? const Color(0xFF00584B)
                            : const Color(0x00ffffff)),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
