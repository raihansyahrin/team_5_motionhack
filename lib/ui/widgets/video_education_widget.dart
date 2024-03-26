import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';

class VideoEducationCard extends StatelessWidget {
  final String title;
  final String nameCreator;
  final int entityVideo;
  final String thumbnail;
  const VideoEducationCard({
    super.key,
    required this.title,
    required this.nameCreator,
    required this.entityVideo,
    required this.thumbnail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 120,
      decoration: const BoxDecoration(
          color: Color(0xFFD5E4E1),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 21.0,
              top: 32,
              bottom: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: regularText14,
                    ),
                    Text(
                      nameCreator,
                      style: lightText12.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 59,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 155, 140, 140),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: <Color>[
                        Color.fromARGB(255, 168, 168, 168),
                        Color.fromARGB(255, 45, 45, 45),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Text(
                    '$entityVideo Video',
                    style: lightText12.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            thumbnail,
            height: 130,
          ),
        ],
      ),
    );
  }
}
