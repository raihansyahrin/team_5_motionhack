import 'package:flutter/material.dart';
import '../../common/theme/font.dart';

class ProfileItem extends StatefulWidget {
  const ProfileItem({super.key});

  @override
  State<ProfileItem> createState() => _ProfileItemState();
}

class _ProfileItemState extends State<ProfileItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.4,
              color: Color(0xFFABABAB),
            ),
          ),
          color: Color(0x00f8f8ff)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Text('Franco', style: regularText16),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
