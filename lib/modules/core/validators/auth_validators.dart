import 'package:fodery_admin/modules/core/utils/string_extension.dart';

class AuthValidators {
  static String? validateEmail(String? value) {
    if (value != null && value.isEmail()) {
      return null;
    } else {
      return "Enter valid email address";
    }
  }

  static String? validatePassword(String? value) {
    if (value != null && value.length >= 8) {
      return null;
    } else {
      return "Password needs to be at least 8 digits.";
    }
  }
}
