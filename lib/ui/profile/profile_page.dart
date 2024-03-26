import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team_5_motionhack/common/styles/colors.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/login/login_page.dart';
import 'package:team_5_motionhack/ui/profile/change_password/change_password_page.dart';
import 'package:team_5_motionhack/ui/profile/edit_profile/edit_profile.dart';
import 'package:team_5_motionhack/ui/widgets/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(); // Tambahkan GlobalKey di sini

  ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FF),
      appBar: const CustomAppBar(title: 'Profile'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 28,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/image.png',
              height: 100,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Michael',
            style: regularText16,
          ),
          const Text(
            'michael5@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 21.0,
              vertical: 25,
            ),
            child: Container(
              color: kColorScheme.background,
              // height: 220,
              child: Column(
                children: [
                  const Divider(
                    height: 10,
                    indent: 0,
                    thickness: 1,
                    color: Colors.transparent,
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/user_icon.svg',
                    ),
                    title: Text(
                      'Edit Profile',
                      style: lightText14,
                    ),
                    trailing:
                        SvgPicture.asset('assets/icons/chevron_right.svg'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfilePage(),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/change_password_icon.svg',
                    ),
                    title: Text(
                      'Ganti Password',
                      style: lightText14,
                    ),
                    trailing:
                        SvgPicture.asset('assets/icons/chevron_right.svg'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ChangePasswordPage(formKey: _formKey),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/icons/logout_icon.svg',
                    ),
                    title: Text(
                      'Keluar',
                      style: lightText14.copyWith(
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                        (route) => false,
                      );
                    },
                  ),
                  const Divider(
                    height: 10,
                    indent: 0,
                    thickness: 1,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
