import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/theme/font.dart';

class ListArticleEducation extends StatefulWidget {
  final String image;
  final String title;
  final String category;

  const ListArticleEducation({
    super.key,
    required this.image,
    required this.title,
    required this.category,
  });

  @override
  State<ListArticleEducation> createState() => _ListArticleEducationState();
}

class _ListArticleEducationState extends State<ListArticleEducation> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const ProfileConsultantPage(),
        //   ),
        // );
      },
      child: Container(
        height: 85,
        // width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
        ),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.4,
              color: Color(0xFFC9C9C9),
            ),
          ),
          color: Color(0x00f8f8ff),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SvgPicture.asset(
                widget.image,
                height: 42,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: regularText14,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.category,
                        style: regularText12.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
