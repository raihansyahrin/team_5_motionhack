import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:team_5_motionhack/common/styles/colors.dart';
import 'package:team_5_motionhack/common/theme/font.dart';
import 'package:team_5_motionhack/ui/registration/registration_page.dart';
import 'package:team_5_motionhack/ui/widgets/bottom_nav_bar.dart';
import 'package:team_5_motionhack/ui/widgets/custom_elevated_button.dart';
import 'package:team_5_motionhack/ui/widgets/custom_text_field.dart';
import 'package:team_5_motionhack/utils/validation_helpers.dart';

final _formKey = GlobalKey<FormState>();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _formEmail = TextEditingController();
  final TextEditingController _formPassword = TextEditingController();

  bool isPasswordHide = true;
  bool isEmailEmpty = true;
  bool isPasswordEmpty = true;
  bool _isLoginButtonClicked = false;

  @override
  void initState() {
    super.initState();
    isPasswordHide = true;
    _formEmail.addListener(_updateEmailEmptyStatus);
    _formPassword.addListener(_updatePasswordEmptyStatus);
  }

  // Fungsi untuk memperbarui status email kosong
  void _updateEmailEmptyStatus() {
    setState(() {
      isEmailEmpty = _formEmail.text.isEmpty;
    });
  }

  // Fungsi untuk memperbarui status password kosong
  void _updatePasswordEmptyStatus() {
    setState(() {
      isPasswordEmpty = _formPassword.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    // AnnotatedRegion untuk set warna Notification Bar Device
    return AnnotatedRegion(
      value: SystemUiOverlayStyle
          .dark, //Set menjadi gelap (Karena backgroudnnya terang pada page)
      sized: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  // bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 106,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 21,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Masuk',
                            style: mediumText28,
                          ),
                          const SizedBox(
                            height: 52,
                          ),
                          CustomTextField(
                            label: 'Email',
                            labelStyle: regularText16,
                            isRequired: false,
                            controller: _formEmail,
                            validator: (formEmail) {
                              if (_isLoginButtonClicked &&
                                  (formEmail == null || formEmail.isEmpty)) {
                                return 'Masukkan email anda';
                              }

                              return ValidationHelpers.validateEmail(
                                  formEmail ?? '');
                            },
                            isPasswordEmpty: isPasswordEmpty,
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          CustomTextField(
                            label: 'Kata Sandi',
                            labelStyle: regularText16,
                            isRequired: false,
                            isPassword: true,
                            isPasswordHide: isPasswordHide,
                            controller: _formPassword,
                            validator: (formPassword) {
                              if (_isLoginButtonClicked &&
                                  (formPassword == null ||
                                      formPassword.isEmpty)) {
                                return 'Masukkan kata sandi anda';
                              }

                              return ValidationHelpers.validatePassword(
                                  formPassword ?? '');
                            },
                            onPressedIconPassword: () {
                              setState(() {
                                isPasswordHide = !isPasswordHide;
                              });
                            },
                            isPasswordVisible: !isPasswordEmpty,
                            isPasswordEmpty: isPasswordEmpty,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const BottomNavBar(),
                                  ),
                                );
                              },
                              child: Text(
                                'Lupa kata sandi',
                                style: regularText14,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 21,
                    ),
                    child: Column(
                      children: [
                        CustomElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isLoginButtonClicked = true;
                            });
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BottomNavBar(),
                                ),
                                (route) => false,
                              );
                            }
                          },
                          text: 'Masuk',
                          fontSize: 18,
                          textColor: kColorScheme.background,
                          fontWeight: FontWeight.w600,
                          minHeight: 47,
                          backgroundColor: isEmailEmpty || isPasswordEmpty
                              ? const Color(0xFF00584B).withOpacity(0.5)
                              : const Color(0xFF00584B),
                          borderRadius: 8,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Belum punya akun?',
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    // builder: (_) => const RegisterPage(),
                                    builder: (_) => const RegistrationPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Daftar',
                                style: boldUnderlineText14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
