import 'package:flutter/material.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Profile',
      ),
    );
  }
}
