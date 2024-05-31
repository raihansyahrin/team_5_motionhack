import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common/theme/font.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_text_field.dart';

final _formKey = GlobalKey<FormState>();

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController formEmail = TextEditingController();
    // final TextEditingController formPassword = TextEditingController();

    // bool isPasswordHide = true;
    // bool isEmailEmpty = true;
    bool isPasswordEmpty = true;
    // bool isLoginButtonClicked = false;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profile',
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 21,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    CustomTextField(
                      label: 'Nomor Induk Berusaha (NIB)',
                      labelStyle: regularText16,
                      isRequired: false,
                      controller: formEmail,
                      // validator: (formEmail) {
                      //   if (_isLoginButtonClicked &&
                      //       (formEmail == null || formEmail.isEmpty)) {
                      //     return 'Masukkan email anda';
                      //   }

                      //   return ValidationHelpers.validateEmail(
                      //       formEmail ?? '');
                      // },
                      isPasswordEmpty: isPasswordEmpty,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    CustomTextField(
                      label: 'Nama Usaha',
                      labelStyle: regularText16,
                      isRequired: false,
                      controller: formEmail,
                      // validator: (formEmail) {
                      //   if (_isLoginButtonClicked &&
                      //       (formEmail == null || formEmail.isEmpty)) {
                      //     return 'Masukkan email anda';
                      //   }

                      //   return ValidationHelpers.validateEmail(
                      //       formEmail ?? '');
                      // },
                      isPasswordEmpty: isPasswordEmpty,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    CustomTextField(
                      label: 'Nama Lengkap Pemilik',
                      labelStyle: regularText16,
                      isRequired: false,
                      controller: formEmail,
                      // validator: (formEmail) {
                      //   if (_isLoginButtonClicked &&
                      //       (formEmail == null || formEmail.isEmpty)) {
                      //     return 'Masukkan email anda';
                      //   }

                      //   return ValidationHelpers.validateEmail(
                      //       formEmail ?? '');
                      // },
                      isPasswordEmpty: isPasswordEmpty,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    CustomTextField(
                      label: 'Alamat',
                      labelStyle: regularText16,
                      isRequired: false,
                      controller: formEmail,
                      // validator: (formEmail) {
                      //   if (_isLoginButtonClicked &&
                      //       (formEmail == null || formEmail.isEmpty)) {
                      //     return 'Masukkan email anda';
                      //   }

                      //   return ValidationHelpers.validateEmail(
                      //       formEmail ?? '');
                      // },
                      isPasswordEmpty: isPasswordEmpty,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Text(
                      'Scan KTP',
                      style: semiBoldText16,
                    ),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          border: Border.fromBorderSide(
                            BorderSide(
                              width: 0.5,
                            ),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/img_input.svg'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'IMG12300021.jpg',
                            style: lightText12,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 21.0,
          right: 21,
          bottom: 50,
        ),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
                color: const Color(0xFF00584B),
                borderRadius: BorderRadius.circular(8.0)),
            child: const Center(
              child: Text(
                'Simpan',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFF8F8FF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
