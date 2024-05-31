import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import '../../common/styles/colors.dart';
import '../../common/theme/font.dart';
import '../login/login_page.dart';
import 'change_password/change_password_page.dart';
import 'edit_profile/edit_profile.dart';
import '../widgets/custom_app_bar.dart';

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
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Keluar',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF00584B),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    'Apakah kamu yakin ingin keluar dari akun ini?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF00584B),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage(),
                                          ),
                                          (route) => false,
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFF00584B),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Text(
                                        'Ya',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: OutlinedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor:
                                            AppColors.primaryColors[0],
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: Text(
                                        'Tidak',
                                        style: TextStyle(
                                          color: AppColors.primaryColors[0],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const LoginPage(),
                      //   ),
                      //   (route) => false,
                      // );
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
