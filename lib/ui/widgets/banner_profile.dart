import 'package:flutter/material.dart';

class ProfileKonsultasi extends StatefulWidget {
  const ProfileKonsultasi({super.key});

  @override
  State<ProfileKonsultasi> createState() => _ProfileKonsultasiState();
}

class _ProfileKonsultasiState extends State<ProfileKonsultasi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72, width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(radius: 20,),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 30,),
                        Text(
                          "Franco",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
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
                color: Color(0xFFABABAB),
              )
          ),
          color: Color(0xF8F8FF)
      ),
    );
  }
}
