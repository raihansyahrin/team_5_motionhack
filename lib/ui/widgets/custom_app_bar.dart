import 'package:flutter/material.dart';
import 'package:team_5_motionhack/common/theme/font.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? action;
  final double height;
  const CustomAppBar({
    super.key,
    required this.title,
    this.action,
    this.height = 60,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.amber,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
          size: 24,
        ),
      ),
      centerTitle: true,
      title: Text(
        title!,
        style: semiBoldText18.copyWith(
          color: Colors.black,
        ),
      ),
      actions: action,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, height);
}
