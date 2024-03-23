import 'package:get/get_utils/src/get_utils/get_utils.dart';

class ValidationHelpers {
  static String? validateEmail(String value) {
    if (value.isEmpty || value == '') {
      return 'Masukkan email anda';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Masukkan email yang valid';
    }

    if (value.contains(' ') || value.contains('   ')) {
      return 'Email tidak boleh mengandung spasi';
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty || value == '') {
      return 'Masukkan kata sandi';
    } else if (value.contains(' ')) {
      return 'Password tidak boleh mengandung spasi';
    } else if (!GetUtils.isLengthGreaterThan(value, 7)) {
      return 'Minimal 8 kata';
    } else if (!RegExp(r"^(?=.*[a-z])").hasMatch(value)) {
      return "Masukkan 1 huruf kecil";
    } else if (!RegExp(r"^(?=.*[A-Z])").hasMatch(value)) {
      return "Masukkan 1 huruf besar";
    } else if (!RegExp(r"^(?=.*\d)").hasMatch(value)) {
      return "Masukkan setidaknya 1 angka";
    } else {
      return null;
    }
  }

  static String? validateConfirmPassword(
      {required String confirmPassword, required String password}) {
    if (confirmPassword.isEmpty || confirmPassword == '') {
      return 'Masukkan ulang kata sandi';
    } else if (confirmPassword != password) {
      return 'Kata sandi tidak sesuai!';
    } else {
      return null;
    }
  }

  static String? validateFullname(String value) {
    if (value.isEmpty || value == ' ') {
      return 'Nama tidak boleh kosong';
    } else if (value.length < 4 || value.trim().length < 4) {
      return 'Minimal 4 karakter';
    } else if (RegExp(r'[0-9!@#$%^&*()_+{}\[\]:;<>,.?~\\-]').hasMatch(value)) {
      return 'Nama tidak boleh mengandung angka dan simbol!';
    } else {
      return null;
    }
  }

  static String? validateOTP(String value) {
    if (value.isEmpty || value == '') {
      // print('otp harus diisi');
      return 'OTP tidak boleh kosong!';
    }
    return null;
  }

  static String? validateNumber(String value) {
    if (value.isEmpty || value == '') {
      // print('Nomor harus diisi');
      return 'Nomor tidak boleh kosong!';
    } else if (!RegExp(r"^(?=.*\d)").hasMatch(value)) {
      return "Masukkan setidaknya 1 angka";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value!.isEmpty || value == '') {
      return 'Nomor telepon tidak boleh kosong!';
    } else if (!RegExp(r"^(?=.*\d)").hasMatch(value)) {
      return "Masukkan setidaknya 1 angka";
    } else if (value.length < 9 || value.trim().length < 9) {
      return 'Minimal 9 angka';
    } else if (!RegExp(r'^08\d{1,12}$').hasMatch(value)) {
      return 'Nomor telepon tidak valid!';
    }
    return null;
  }

  static String? validateAddress(String? value) {
    if (value!.isEmpty || value == '') {
      return 'Alamat tidak boleh kosong!';
    } else if (!RegExp(r"^[a-zA-Z0-9\s,.'-]*$").hasMatch(value)) {
      return "Alamat hanya boleh berisi huruf dan angka!";
    } else if (value.length < 8) {
      return 'Masukkan alamat lebih detail!';
    } else if (value.length > 150) {
      return 'Maksimal 150 karakter!';
    }
    return null;
  }

  static String? validateLink(String value) {
    // Regular expression for a valid URL
    String pattern =
        r'^(https?:\/\/)?(www\.)?[a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)';
    RegExp regExp = RegExp(pattern);

    if (value.isEmpty) {
      return 'Please enter a URL';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter a valid URL';
    }
    return null;
  }

  static String? validatePhoneNumberNullable(String? value) {
    if (value!.isNotEmpty) {
      if (!RegExp(r'^08\d{1,12}$').hasMatch(value)) {
        return 'Nomor telepon tidak valid!';
      }
    }
    return null;
  }

  // static Future<ConnectivityResult> checkConnection() async {
  //   return await (Connectivity().checkConnectivity());
  // }
}
