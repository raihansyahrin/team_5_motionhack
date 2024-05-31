import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../common/styles/colors.dart';
import '../../common/theme/font.dart';
import '../login/login_page.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';
import '../../utils/validation_helpers.dart';

final _formKey = GlobalKey<FormState>();

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _emailForm = TextEditingController();
  final TextEditingController _passForm = TextEditingController();
  final TextEditingController _konfirmasiForm = TextEditingController();
  bool isPassHide = true;
  bool isKonfirmasiHide = true;
  bool isEmailEmpty = true;
  bool isKonfirmasiEmpty = true;
  bool isPassEmpty = true;
  bool _isDaftarClicked = false;

  @override
  // ignore: override_on_non_overriding_member
  void _updateEmailEmptyStatus() {
    setState(() {
      isEmailEmpty = _emailForm.text.isEmpty;
    });
  }

  void _updatePassEmptyStatus() {
    setState(() {
      isPassEmpty = _passForm.text.isEmpty;
    });
  }

  void _updateKonfirmasiEmptyStatus() {
    setState(() {
      isKonfirmasiEmpty = _konfirmasiForm.text.isEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _emailForm.addListener(_updateEmailEmptyStatus);
    _passForm.addListener(_updatePassEmptyStatus);
    _konfirmasiForm.addListener(_updateKonfirmasiEmptyStatus);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      sized: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomScrollView(
            reverse: true,
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daftar',
                                style: mediumText28,
                              ),
                              const SizedBox(
                                height: 52,
                              ),
                              CustomTextField(
                                label: 'Email',
                                labelStyle: regularText16,
                                controller: _emailForm,
                                isRequired: false,
                                validator: (formEmail) {
                                  if (_isDaftarClicked &&
                                      (formEmail == null ||
                                          formEmail.isEmpty)) {
                                    return 'Masukkan email anda';
                                  }
                                  return ValidationHelpers.validateEmail(
                                      formEmail ?? '');
                                },
                                isPasswordEmpty: isPassEmpty,
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              CustomTextField(
                                label: 'Kata Sandi',
                                labelStyle: regularText16,
                                isRequired: false,
                                isPassword: true,
                                isPasswordHide: isPassHide,
                                controller: _passForm,
                                validator: (passwordForm) {
                                  if (_isDaftarClicked &&
                                      (passwordForm == null ||
                                          passwordForm.isEmpty)) {
                                    return 'Masukkan kata sandi anda';
                                  }
                                  return ValidationHelpers.validatePassword(
                                      passwordForm ?? '');
                                },
                                onPressedIconPassword: () {
                                  setState(() {
                                    isPassHide = !isPassHide;
                                  });
                                },
                                isPasswordEmpty: isPassEmpty,
                                isPasswordVisible: !isPassEmpty,
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              CustomTextField(
                                label: 'Konfirmasi kata sandi',
                                labelStyle: regularText16,
                                isRequired: false,
                                isPassword: true,
                                isPasswordHide: isKonfirmasiHide,
                                controller: _konfirmasiForm,
                                validator: (konfirmasiPass) {
                                  if (_isDaftarClicked &&
                                      (konfirmasiPass == null ||
                                          konfirmasiPass.isEmpty)) {
                                    return 'Masukkan kembali kata sandi anda';
                                  }
                                  return ValidationHelpers
                                      .validateConfirmPassword(
                                          confirmPassword: _konfirmasiForm.text,
                                          password: _passForm.text);
                                },
                                onPressedIconPassword: () {
                                  setState(() {
                                    isKonfirmasiHide = !isKonfirmasiHide;
                                  });
                                },
                                isPasswordEmpty: isKonfirmasiEmpty,
                                isPasswordVisible: !isKonfirmasiEmpty,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 98,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        child: Column(
                          children: [
                            CustomElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _isDaftarClicked = true;
                                });
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage()),
                                      ModalRoute.withName('/'));
                                }
                              },
                              text: 'Daftar',
                              fontSize: 18,
                              textColor: kColorScheme.background,
                              fontWeight: FontWeight.w600,
                              minHeight: 47,
                              backgroundColor: isPassEmpty ||
                                      isKonfirmasiEmpty ||
                                      isEmailEmpty
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
                                const Text('Sudah punya Akun?'),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Masuk',
                                    style: boldUnderlineText14,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
