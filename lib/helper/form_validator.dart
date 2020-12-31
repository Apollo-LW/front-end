class FormValidators {
  static String presenceValidator(var val,
      [String message = "This field can't be blank"]) {
    if (val.isEmpty) return message;
    return null;
  }
}
