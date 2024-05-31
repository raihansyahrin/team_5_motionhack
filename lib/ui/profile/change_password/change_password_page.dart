import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../common/styles/colors.dart';
import '../../../common/theme/font.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_field.dart';

// final _formKey = GlobalKey<FormState>();

class ChangePasswordPage extends StatefulWidget {
  final GlobalKey<FormState> formKey; // Terima GlobalKey di sini

  const ChangePasswordPage({super.key, required this.formKey});
  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final TextEditingController _oldPassword = TextEditingController();
  final TextEditingController _passForm = TextEditingController();
  final TextEditingController _konfirmasiForm = TextEditingController();
  bool isPassHide = true;
  bool isKonfirmasiHide = true;
  bool isEmailEmpty = true;
  bool isKonfirmasiEmpty = true;
  bool isPassEmpty = true;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      sized: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(
          title: 'Ubah Kata Sandi',
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            // bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 21,
            right: 21,
          ),
          child: Form(
            key: widget.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                CustomTextField(
                  label: 'Kata sandi lama',
                  labelStyle: regularText16,
                  controller: _oldPassword,
                  isRequired: false,
                  isPassword: true,
                  // validator: (formEmail) {
                  //   if (_isDaftarClicked &&
                  //       (formEmail == null || formEmail.isEmpty)) {
                  //     return 'Masukkan email anda';
                  //   }
                  //   return ValidationHelpers.validateEmail(formEmail ?? '');
                  // },
                  isPasswordEmpty: isPassEmpty,
                  isPasswordHide: isPassHide,
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomTextField(
                  label: 'Kata sandi baru',
                  labelStyle: regularText16,
                  isRequired: false,
                  isPassword: true,
                  isPasswordHide: isPassHide,
                  controller: _passForm,
                  // validator: (passwordForm) {
                  //   if (_isDaftarClicked &&
                  //       (passwordForm == null || passwordForm.isEmpty)) {
                  //     return 'Masukkan kata sandi anda';
                  //   }
                  //   return ValidationHelpers.validatePassword(
                  //       passwordForm ?? '');
                  // },
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
                  label: 'Konfirmasi kata sandi baru',
                  labelStyle: regularText16,
                  isRequired: false,
                  isPassword: true,
                  isPasswordHide: isKonfirmasiHide,
                  controller: _konfirmasiForm,
                  // validator: (konfirmasiPass) {
                  //   if (_isDaftarClicked &&
                  //       (konfirmasiPass == null || konfirmasiPass.isEmpty)) {
                  //     return 'Masukkan kembali kata sandi anda';
                  //   }
                  //   return ValidationHelpers.validateConfirmPassword(
                  //       confirmPassword: _konfirmasiForm.text,
                  //       password: _passForm.text);
                  // },
                  onPressedIconPassword: () {
                    setState(() {
                      isKonfirmasiHide = !isKonfirmasiHide;
                    });
                  },
                  isPasswordEmpty: isKonfirmasiEmpty,
                  isPasswordVisible: !isKonfirmasiEmpty,
                ),
                const SizedBox(height: 20),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: CustomElevatedButton(
                    onPressed: () {
                      // setState(() {
                      //   _isLoginButtonClicked = true;
                      // });
                      // if (_formKey.currentState!.validate()) {
                      //   Navigator.pushAndRemoveUntil(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const LoginPage(),
                      //     ),
                      //     (route) => false,
                      //   );
                      // }
                    },
                    text: 'Konfirmasi',
                    fontSize: 18,
                    textColor: kColorScheme.background,
                    fontWeight: FontWeight.w600,
                    minHeight: 47,
                    backgroundColor: isPassEmpty
                        ? const Color(0xFF00584B).withOpacity(0.5)
                        : const Color(0xFF00584B),
                    borderRadius: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
