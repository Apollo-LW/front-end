import 'package:validators/validators.dart' as validators;

class FormValidators {
  static String presenceValidator(var val,
      [String message = "لا يمكن أن يكون هذا الحقل فارغًا"]) {
    if (val.isEmpty) return message;
    return null;
  }

  static String emailValidator(var val,
      [String message = "يجب أن يكون هذا الحقل بريدًا إلكترونيًا صالحًا"]) {
    if (!validators.isEmail(val)) return message;
    return null;
  }
}
