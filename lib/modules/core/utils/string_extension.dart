import 'package:fodery_admin/modules/core/constants/app_constants.dart';

extension StringExtention on String {
  bool isEmail() {
    return RegExp(AppConstants.PATTERN_EMAIL).hasMatch(this);
  }
}
