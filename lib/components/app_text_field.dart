import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String initialValue;
  final Widget prefixIcon;
  final Function onTap;
  final bool tapOnly;
  final TextEditingController controller;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;
  final bool isPartnerTextField;
  TextEditingController partnerTextEditingController = TextEditingController();

  AppTextField({
    @required this.label,
    this.prefixIcon,
    this.onTap,
    this.controller,
    this.validator,
    this.onSaved,
    this.isEmail = false,
    this.tapOnly = false,
    this.isPassword = false,
    this.initialValue,
    this.isPartnerTextField = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: this.label,
        hintText: this.label,
        prefixIcon: this.prefixIcon,
      ),
      onTap: this.onTap,
      initialValue: initialValue,
      readOnly: tapOnly,
      controller:
          isPartnerTextField ? partnerTextEditingController : this.controller,
      validator: this.validator,
      onSaved: this.onSaved,
      obscureText: isPassword ? true : false,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
    );
  }
}
